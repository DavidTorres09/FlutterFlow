import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDqB7S_Usjp-PAx59flkCPEb6A3MvDzWUg",
            authDomain: "mi-primera-pagina-4f4e89.firebaseapp.com",
            projectId: "mi-primera-pagina-4f4e89",
            storageBucket: "mi-primera-pagina-4f4e89.appspot.com",
            messagingSenderId: "514683818563",
            appId: "1:514683818563:web:4b5d9beda454ca22203af6"));
  } else {
    await Firebase.initializeApp();
  }
}
