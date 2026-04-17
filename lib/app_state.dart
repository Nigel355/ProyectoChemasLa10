import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _Rol = '';
  String get Rol => _Rol;
  set Rol(String value) {
    _Rol = value;
  }

  String _Rol2 = '';
  String get Rol2 => _Rol2;
  set Rol2(String value) {
    _Rol2 = value;
  }

  String _imagen = '';
  String get imagen => _imagen;
  set imagen(String value) {
    _imagen = value;
  }

  String _video = '';
  String get video => _video;
  set video(String value) {
    _video = value;
  }

  int _contador = 0;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  String _sinpeComprobante = '';
  String get sinpeComprobante => _sinpeComprobante;
  set sinpeComprobante(String value) {
    _sinpeComprobante = value;
  }
}
