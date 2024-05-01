import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDlvcFlbtwWGfxEbZHXTxEl3t4JiHNqPTA",
            authDomain: "quran-app-291ec.firebaseapp.com",
            projectId: "quran-app-291ec",
            storageBucket: "quran-app-291ec.appspot.com",
            messagingSenderId: "704109270541",
            appId: "1:704109270541:web:d26ac4991c15774be26744",
            measurementId: "G-6Q48YJBYPT"));
  } else {
    await Firebase.initializeApp();
  }
}
