import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBXMKwoJiZwSQ6pFto1kT_c6m6tDfGbsYw",
            authDomain: "explore-job-oqjfr3.firebaseapp.com",
            projectId: "explore-job-oqjfr3",
            storageBucket: "explore-job-oqjfr3.appspot.com",
            messagingSenderId: "848884821122",
            appId: "1:848884821122:web:794aa3e4235fb2130d989b"));
  } else {
    await Firebase.initializeApp();
  }
}
