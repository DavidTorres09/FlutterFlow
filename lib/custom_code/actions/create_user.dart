// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> createUser(
  // Parameters
  String emailAddress,
  String password,
  String randomDocGen,
  String rol,
  String imagen,
  String nombreUsuario,
  String phone,
) async {
  try {
    // Create the return msg
    DateTime createdTime = DateTime.now();

    // Initialize Firebase app
    FirebaseApp app = await Firebase.initializeApp(
      name: randomDocGen,
      options: Firebase.app().options,
    );

    // Create the user with the email & password provided
    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(
            email: emailAddress, password: password);

    // Get the UID generated
    String? uid = userCredential.user?.uid;

    if (uid != null) {
      // Get collection reference to create our new user document
      final CollectionReference<Map<String, dynamic>> usersRef =
          FirebaseFirestore.instance.collection('users');

      // Create new user document with the provided parameters
      await usersRef.doc(uid).set({
        'uid': uid,
        'display_name': nombreUsuario,
        'photo_url': imagen,
        'email': emailAddress,
        'created_time': createdTime,
        'role': rol,
        'phone_number': phone,
      });
    } else {
      throw Exception('User ID is null.');
    }
  } catch (e) {
    print('Error creating user: $e');
    throw e;
  }
}
