import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCXVkjCnpElfsR1gkJS5zhA9NrYdaiqjSs",
            authDomain: "ask-us-tax-xwz4f1.firebaseapp.com",
            projectId: "ask-us-tax-xwz4f1",
            storageBucket: "ask-us-tax-xwz4f1.appspot.com",
            messagingSenderId: "173211915965",
            appId: "1:173211915965:web:71a587e634a169e2bb09d4"));
  } else {
    await Firebase.initializeApp();
  }
}
