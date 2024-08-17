// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:razorpay_web/razorpay_web.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<String?> initiateRazorpayPayment(
  int amount,
  String name,
  String description,
  String contactNumber,
  String email,
) async {
  final Razorpay razorpay = Razorpay();
  Completer<String?> completer = Completer();

  try {
    // Fetch current GST rate from Firebase
    final recordsDoc = await FirebaseFirestore.instance
        .collection('records')
        .doc('UKBTHIIDsctnTSLmXYGF')
        .get();

    double gstRate = (recordsDoc.data()?['gst'] ?? 18) / 100;
    double gstAmount = amount * gstRate;
    int totalAmount = (amount + gstAmount).round();

    final response = await http.post(
      Uri.parse('https://razorpay-backend-nu.vercel.app/api/razorpay'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'action': 'createOrder',
        'amount': totalAmount,
        'currency': 'INR',
        'receipt': 'receipt_${DateTime.now().millisecondsSinceEpoch}',
        'notes': {
          'name': name,
          'description': description,
        },
      }),
    );

    if (response.statusCode != 200) {
      print('Failed to create order: ${response.body}');
      throw Exception('Failed to create order: ${response.statusCode}');
    }

    final orderData = json.decode(response.body);
    final orderId = orderData['orderId'];

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS,
        (PaymentSuccessResponse response) async {
      try {
        final verifyResponse = await http.post(
          Uri.parse('https://razorpay-backend-nu.vercel.app/api/razorpay'),
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'action': 'verifyPayment',
            'orderId': orderId,
            'paymentId': response.paymentId,
            'signature': response.signature,
          }),
        );

        if (verifyResponse.statusCode == 200) {
          final verifyData = json.decode(verifyResponse.body);
          if (verifyData['isValid']) {
            // Update total revenue in Firebase
            await FirebaseFirestore.instance
                .collection('records')
                .doc('UKBTHIIDsctnTSLmXYGF')
                .update({
              'totalRevenue': FieldValue.increment(totalAmount),
              'curInvoiceNo': FieldValue.increment(1),
            });
            completer.complete(response.paymentId);
          } else {
            print('Payment verification failed: ${verifyResponse.body}');
            completer.complete(null);
          }
        } else {
          print(
              'Verification request failed: ${verifyResponse.statusCode} - ${verifyResponse.body}');
          completer.complete(null);
        }
      } catch (e) {
        print('Error during verification: $e');
        completer.complete(null);
      }
    });

    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR,
        (PaymentFailureResponse response) {
      print('Payment failed: ${response.code} - ${response.message}');
      completer.complete(null);
    });

    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET,
        (ExternalWalletResponse response) {
      print('External wallet selected: ${response.walletName}');
      completer.complete(null);
    });

    var options = {
      'key': 'rzp_test_1Prk9NQFYuaNaQ',
      'amount': totalAmount * 100,
      'name': name,
      'description': description,
      'order_id': orderId,
      'prefill': {
        'contact': contactNumber,
        'email': email,
      },
      'external': {
        'wallets': ['paytm']
      }
    };

    razorpay.open(options);
  } catch (e) {
    print('Error initiating Razorpay payment: $e');
    completer.complete(null);
  }

  String? paymentId = await completer.future.timeout(
    Duration(minutes: 5),
    onTimeout: () {
      print('Payment timed out');
      return null;
    },
  );

  razorpay.clear();
  return paymentId;
}
