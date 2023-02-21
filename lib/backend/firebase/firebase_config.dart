import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBA9Bb0gUuMwog0_8jEOclrYYweRLNzm4E",
            authDomain: "linked-network-online.firebaseapp.com",
            projectId: "linked-network-online",
            storageBucket: "linked-network-online.appspot.com",
            messagingSenderId: "845221610574",
            appId: "1:845221610574:web:85397d8dec601f7fd76f1f",
            measurementId: "G-P0LZQ9PXC6"));
  } else {
    await Firebase.initializeApp();
  }
}
