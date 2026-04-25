// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

/// necesito que valide un código de descuento CHEMA10 y me calcule el precio
/// con un 10% de descuento, sino me devuelve solo el precio
Future validarCodigoDescuento() async {
  const String codigoDescuento = 'CHEMA10';
  const double porcentajeDescuento = 0.10;

  // Obtener el código ingresado por el usuario desde el app state
  String codigoIngresado = FFAppState().sinpeComprobante.trim().toUpperCase();

  // Obtener el precio actual desde el contador del app state
  double precio = FFAppState().contador.toDouble();

  if (codigoIngresado == codigoDescuento) {
    // Aplicar el 10% de descuento
    double descuento = precio * porcentajeDescuento;
    double precioConDescuento = precio - descuento;

    // Actualizar el contador con el precio con descuento
    FFAppState().update(() {
      FFAppState().contador = precioConDescuento.round();
    });

    return precioConDescuento;
  } else {
    // Devolver el precio sin descuento
    return precio;
  }
}
