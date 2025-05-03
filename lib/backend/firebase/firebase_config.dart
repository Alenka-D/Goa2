import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBFNEcKqu63w-HFRIdtqM-rRkv8HHuGSEo",
            authDomain: "goa2-5fa77.firebaseapp.com",
            projectId: "goa2-5fa77",
            storageBucket: "goa2-5fa77.firebasestorage.app",
            messagingSenderId: "33784855955",
            appId: "1:33784855955:web:c1212c209394859135fc66"));
  } else {
    await Firebase.initializeApp();
  }
}
