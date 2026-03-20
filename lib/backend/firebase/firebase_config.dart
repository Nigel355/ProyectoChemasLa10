import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCNtqbXJ8fBb7C9Ad75_uJesJUIzdqNfCo",
            authDomain: "chemasla10-92012.firebaseapp.com",
            projectId: "chemasla10-92012",
            storageBucket: "chemasla10-92012.firebasestorage.app",
            messagingSenderId: "1017933192927",
            appId: "1:1017933192927:web:513f3ccd1f9e6db46b536a",
            measurementId: "G-MCD6D9832Z"));
  } else {
    await Firebase.initializeApp();
  }
}
