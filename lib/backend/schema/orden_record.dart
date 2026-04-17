import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdenRecord extends FirestoreRecord {
  OrdenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "iva" field.
  double? _iva;
  double get iva => _iva ?? 0.0;
  bool hasIva() => _iva != null;

  // "fecha_creacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "carrito" field.
  DocumentReference? _carrito;
  DocumentReference? get carrito => _carrito;
  bool hasCarrito() => _carrito != null;

  // "camisasSeleccionadas" field.
  List<DocumentReference>? _camisasSeleccionadas;
  List<DocumentReference> get camisasSeleccionadas =>
      _camisasSeleccionadas ?? const [];
  bool hasCamisasSeleccionadas() => _camisasSeleccionadas != null;

  // "costoEnvio" field.
  double? _costoEnvio;
  double get costoEnvio => _costoEnvio ?? 0.0;
  bool hasCostoEnvio() => _costoEnvio != null;

  // "metodoPago" field.
  String? _metodoPago;
  String get metodoPago => _metodoPago ?? '';
  bool hasMetodoPago() => _metodoPago != null;

  // "tipoEnvio" field.
  String? _tipoEnvio;
  String get tipoEnvio => _tipoEnvio ?? '';
  bool hasTipoEnvio() => _tipoEnvio != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
    _estado = snapshotData['estado'] as String?;
    _iva = castToType<double>(snapshotData['iva']);
    _fechaCreacion = snapshotData['fecha_creacion'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _carrito = snapshotData['carrito'] as DocumentReference?;
    _camisasSeleccionadas = getDataList(snapshotData['camisasSeleccionadas']);
    _costoEnvio = castToType<double>(snapshotData['costoEnvio']);
    _metodoPago = snapshotData['metodoPago'] as String?;
    _tipoEnvio = snapshotData['tipoEnvio'] as String?;
    _direccion = snapshotData['direccion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orden');

  static Stream<OrdenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdenRecord.fromSnapshot(s));

  static Future<OrdenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdenRecord.fromSnapshot(s));

  static OrdenRecord fromSnapshot(DocumentSnapshot snapshot) => OrdenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdenRecordData({
  String? nombre,
  double? monto,
  String? estado,
  double? iva,
  DateTime? fechaCreacion,
  DocumentReference? user,
  DocumentReference? carrito,
  double? costoEnvio,
  String? metodoPago,
  String? tipoEnvio,
  String? direccion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'monto': monto,
      'estado': estado,
      'iva': iva,
      'fecha_creacion': fechaCreacion,
      'user': user,
      'carrito': carrito,
      'costoEnvio': costoEnvio,
      'metodoPago': metodoPago,
      'tipoEnvio': tipoEnvio,
      'direccion': direccion,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdenRecordDocumentEquality implements Equality<OrdenRecord> {
  const OrdenRecordDocumentEquality();

  @override
  bool equals(OrdenRecord? e1, OrdenRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.monto == e2?.monto &&
        e1?.estado == e2?.estado &&
        e1?.iva == e2?.iva &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.user == e2?.user &&
        e1?.carrito == e2?.carrito &&
        listEquality.equals(
            e1?.camisasSeleccionadas, e2?.camisasSeleccionadas) &&
        e1?.costoEnvio == e2?.costoEnvio &&
        e1?.metodoPago == e2?.metodoPago &&
        e1?.tipoEnvio == e2?.tipoEnvio &&
        e1?.direccion == e2?.direccion;
  }

  @override
  int hash(OrdenRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.monto,
        e?.estado,
        e?.iva,
        e?.fechaCreacion,
        e?.user,
        e?.carrito,
        e?.camisasSeleccionadas,
        e?.costoEnvio,
        e?.metodoPago,
        e?.tipoEnvio,
        e?.direccion
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdenRecord;
}
