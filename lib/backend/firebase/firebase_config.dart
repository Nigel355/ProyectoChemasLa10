import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDQ2DZ2y1g9ESxLHOOoZ2YD9kDFbsRePBE",
            authDomain: "chemasla10.firebaseapp.com",
            projectId: "chemasla10",
            storageBucket: "chemasla10.firebasestorage.app",
            messagingSenderId: "539131474805",
            appId: "1:539131474805:web:515314e63688b05a7bd93c",
            measurementId: "G-5522ZY2V6H"));
  } else {
    await Firebase.initializeApp();
  }
}
