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

Future<double> calcularPromedioPorUsuario(String email) async {
  double meanOut = 0;
  final firestore = FirebaseFirestore.instance;

  // Buscar al usuario por su email
  final searchUser = await firestore
      .collection('users')
      .where('email', isEqualTo: email)
      .get();

  if (searchUser.docs.isEmpty) {
    throw Exception('No user found with email: $email');
  }

  // Extraer el email del primer documento encontrado
  final userEmail = searchUser.docs.first.get('email');

  // Buscar las calificaciones del usuario
  final listCal = await firestore
      .collection('calificaciones')
      .where('userEmail', isEqualTo: userEmail)
      .get();

  if (listCal.docs.isEmpty) {
    return 0.0; // No calificaciones encontradas
  }

  // Calcular el promedio de las calificaciones
  for (var documentSnapshot in listCal.docs) {
    final cal = documentSnapshot.get('nota')
        as double; // Asegúrate de que 'nota' es un double
    meanOut += cal;
  }

  final listing = listCal.docs.length;
  if (listing > 0) {
    // Evitar división por cero
    meanOut /= listing;
  }

  return meanOut;
}
