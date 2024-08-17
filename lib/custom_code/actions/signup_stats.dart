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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<SignupsGraphStruct>> signupStats(int? days) async {
  print('signupStats function called with days: $days');

  final int validDays = days ?? 7;
  print('Using $validDays days for the query');

  final now = DateTime.now();
  final startDate = now.subtract(Duration(days: validDays));
  print('Start date: $startDate, End date: $now');

  try {
    print('Querying Firestore...');
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('created_time', isGreaterThanOrEqualTo: startDate)
        .orderBy('created_time', descending: true)
        .get();

    print('Query completed. Number of documents: ${querySnapshot.docs.length}');

    if (querySnapshot.docs.isEmpty) {
      print('No documents found.');
      return [];
    }

    Map<String, int> dailySignups = {};

    print('Processing documents...');
    for (var doc in querySnapshot.docs) {
      final data = doc.data() as Map<String, dynamic>;
      final createdTime = (data['created_time'] as Timestamp).toDate();

      final dateKey =
          '${createdTime.year}-${createdTime.month.toString().padLeft(2, '0')}-${createdTime.day.toString().padLeft(2, '0')}';
      dailySignups[dateKey] = (dailySignups[dateKey] ?? 0) + 1;
      print('Date: $dateKey, Count: ${dailySignups[dateKey]}');
    }

    List<SignupsGraphStruct> result = [];

    print('Creating SignupsGraphStruct objects...');
    dailySignups.forEach((date, count) {
      final dateParts = date.split('-').map(int.parse).toList();
      final dateTime = DateTime(dateParts[0], dateParts[1], dateParts[2]);
      final daysDifference = now.difference(dateTime).inDays;

      if (daysDifference < validDays) {
        result.add(SignupsGraphStruct(
          dates: daysDifference,
          count: count,
        ));
        print('Day $daysDifference: Count $count');
      }
    });

    // Sort in descending order of dates (most recent first)
    result.sort((a, b) => b.dates.compareTo(a.dates));

    print('Returning ${result.length} SignupsGraphStruct objects');
    return result;
  } catch (e, stackTrace) {
    print('Error fetching signup stats: $e');
    print('Stack trace: $stackTrace');
    return [];
  }
}
