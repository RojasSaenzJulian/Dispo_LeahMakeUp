import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAr-kQ_W4GBSw7Yn-sZpf9MQi7ytIX6wjU",
            authDomain: "leahmakeup-ca368.firebaseapp.com",
            projectId: "leahmakeup-ca368",
            storageBucket: "leahmakeup-ca368.appspot.com",
            messagingSenderId: "357702482290",
            appId: "1:357702482290:web:97a75892f0bde4a5c645eb",
            measurementId: "G-1NJLP15D3H"));
  } else {
    await Firebase.initializeApp();
  }
}
