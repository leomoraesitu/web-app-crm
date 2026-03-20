import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCvG3yfwxqLnrgcQmiN_V-taRlinilZwEs",
            authDomain: "web-app-crm-prod.firebaseapp.com",
            projectId: "web-app-crm-prod",
            storageBucket: "web-app-crm-prod.firebasestorage.app",
            messagingSenderId: "1026905291854",
            appId: "1:1026905291854:web:38d248cc46191633c9971f",
            measurementId: "G-MDHMMZYMSG"));
  } else {
    await Firebase.initializeApp();
  }
}
