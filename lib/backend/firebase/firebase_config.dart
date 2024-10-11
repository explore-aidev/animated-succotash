import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBaGoOcIyg35RT-7XC8ihvLcrhoQDMk_8I",
            authDomain: "explore-56pj5q.firebaseapp.com",
            projectId: "explore-56pj5q",
            storageBucket: "explore-56pj5q.appspot.com",
            messagingSenderId: "88083005117",
            appId: "1:88083005117:web:a56452fca9aca812f481d4"));
  } else {
    await Firebase.initializeApp();
  }
}
