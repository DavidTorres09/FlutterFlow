// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<double> calcularPromedio() async {
  double meanOut = 0; // Initialize meanOut
  final firestore =
      FirebaseFirestore.instance; // Correct the instance reference

  QuerySnapshot listCal = await firestore.collection('calificaciones').get();

  for (QueryDocumentSnapshot documentSnapshot in listCal.docs) {
    dynamic cal = documentSnapshot.get('nota');
    meanOut += cal;
  }

  int listing = listCal.docs.length;
  if (listing > 0) {
    // Avoid division by zero
    meanOut /= listing;
  }

  return meanOut;
}