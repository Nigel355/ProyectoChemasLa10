import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "contadorItems" field.
  int? _contadorItems;
  int get contadorItems => _contadorItems ?? 0;
  bool hasContadorItems() => _contadorItems != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "camisaSeleccionada" field.
  DocumentReference? _camisaSeleccionada;
  DocumentReference? get camisaSeleccionada => _camisaSeleccionada;
  bool hasCamisaSeleccionada() => _camisaSeleccionada != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _contadorItems = castToType<int>(snapshotData['contadorItems']);
    _activo = snapshotData['activo'] as bool?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _camisaSeleccionada =
        snapshotData['camisaSeleccionada'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  DocumentReference? usuario,
  int? contadorItems,
  bool? activo,
  int? cantidad,
  DocumentReference? camisaSeleccionada,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'contadorItems': contadorItems,
      'activo': activo,
      'cantidad': cantidad,
      'camisaSeleccionada': camisaSeleccionada,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.contadorItems == e2?.contadorItems &&
        e1?.activo == e2?.activo &&
        e1?.cantidad == e2?.cantidad &&
        e1?.camisaSeleccionada == e2?.camisaSeleccionada;
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.contadorItems,
        e?.activo,
        e?.cantidad,
        e?.camisaSeleccionada
      ]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
