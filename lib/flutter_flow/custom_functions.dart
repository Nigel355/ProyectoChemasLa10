import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? subtotalCarrito(
  int? cantidad,
  double? precio,
) {
  // funcion que retorne el precio muliplicandolo x la cantidad de articulos
  if (cantidad == null || precio == null) {
    return null; // Return null if either cantidad or precio is null
  }
  return cantidad * precio; // Return the subtotal
}
