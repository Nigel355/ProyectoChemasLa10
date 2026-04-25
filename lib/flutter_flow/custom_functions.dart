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

double iva(double monto) {
  return monto * 0.13;
}

double totalOrden(
  double monto,
  double shipping,
) {
  return monto + (monto * 0.13) + shipping;
}

double? aplicarCodigoDescuento(
  double? precioTotalOrden,
  String? codigoDescuento,
) {
  if (precioTotalOrden == null) {
    return null;
  }

  double descuento = 0.0;

  if (codigoDescuento != null) {
    if (codigoDescuento == 'DESCUENTO10') {
      descuento = 0.10;
    } else if (codigoDescuento == 'DESCUENTO20') {
      descuento = 0.20;
    }
  }

  return precioTotalOrden - (precioTotalOrden * descuento);
}

double? totalOrdenConDescuento(
  double monto,
  double shipping,
  String? codigoDescuento,
) {
  double total = monto + (monto * 0.13) + shipping;

  double descuento = 0.0;

  if (codigoDescuento != null) {
    codigoDescuento = codigoDescuento.toUpperCase().trim();

    if (codigoDescuento == 'DESCUENTO10') {
      descuento = 0.10;
    } else if (codigoDescuento == 'DESCUENTO20') {
      descuento = 0.20;
    }
  }

  return total - (total * descuento);
}
