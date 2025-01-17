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

import 'package:firebase_auth/firebase_auth.dart';

Future<String> changePassword(String currentPassword, String newPassword,
    String confirmNewPassword, String email) async {
  try {
    // Check if new password and confirm new password match
    if (newPassword != confirmNewPassword) {
      return 'New password and confirm new password do not match.';
    }

    User? user = FirebaseAuth.instance.currentUser;

    // Reauthenticate the user.
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: currentPassword,
    );
    await user?.reauthenticateWithCredential(credential);

    // If reauthentication is successful, change the password.
    await user?.updatePassword(newPassword);

    // Password changed successfully.
    return 'Password changed successfully.';
  } catch (e) {
    // Handle reauthentication errors and password change errors.
    return 'Error changing password: $e';
  }
}
