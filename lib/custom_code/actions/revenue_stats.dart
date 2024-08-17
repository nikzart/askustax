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
import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<RevenueGraphStruct>> revenueStats(int? days) async {
  print('revenueStats function called with days: $days');

  final int validDays = days ?? 7;
  print('Using $validDays days for the query');

  final now = DateTime.now();
  final startDate = now.subtract(Duration(days: validDays));
  print('Start date: $startDate, End date: $now');

  try {
    print('Querying Firestore...');
    final querySnapshot = await FirebaseFirestore.instance
        .collection('transactions')
        .where('status', isEqualTo: 'complete')
        .where('paidOn', isGreaterThanOrEqualTo: startDate)
        .orderBy('paidOn', descending: true)
        .get();

    print('Query completed. Number of documents: ${querySnapshot.docs.length}');

    if (querySnapshot.docs.isEmpty) {
      print('No documents found.');
      return [];
    }

    Map<String, int> dailyRevenue = {};

    print('Processing documents...');
    for (var doc in querySnapshot.docs) {
      final data = doc.data() as Map<String, dynamic>;
      final amount = (data['amount'] as num).round();
      final paidOn = (data['paidOn'] as Timestamp).toDate();

      final dateKey =
          '${paidOn.year}-${paidOn.month.toString().padLeft(2, '0')}-${paidOn.day.toString().padLeft(2, '0')}';
      dailyRevenue[dateKey] = (dailyRevenue[dateKey] ?? 0) + amount;
      print('Date: $dateKey, Amount: $amount');
    }

    List<RevenueGraphStruct> result = [];

    print('Creating RevenueGraphStruct objects...');
    dailyRevenue.forEach((date, revenue) {
      final dateParts = date.split('-').map(int.parse).toList();
      final dateTime = DateTime(dateParts[0], dateParts[1], dateParts[2]);
      final daysDifference = now.difference(dateTime).inDays;

      if (daysDifference < validDays) {
        result.add(RevenueGraphStruct(
          dates: daysDifference,
          revenue: revenue,
        ));
        print('Day $daysDifference: Revenue $revenue');
      }
    });

    // Sort in descending order
    result.sort((a, b) => b.dates.compareTo(a.dates));

    print('Returning ${result.length} RevenueGraphStruct objects');
    return result;
  } catch (e, stackTrace) {
    print('Error fetching revenue stats: $e');
    print('Stack trace: $stackTrace');
    return [];
  }
}
