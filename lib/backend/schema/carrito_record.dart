import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

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

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "camisaSeleccionada" field.
  List<DocumentReference>? _camisaSeleccionada;
  List<DocumentReference> get camisaSeleccionada =>
      _camisaSeleccionada ?? const [];
  bool hasCamisaSeleccionada() => _camisaSeleccionada != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _contadorItems = castToType<int>(snapshotData['contadorItems']);
    _activo = snapshotData['activo'] as bool?;
    _monto = castToType<double>(snapshotData['monto']);
    _camisaSeleccionada = getDataList(snapshotData['camisaSeleccionada']);
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
  double? monto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'contadorItems': contadorItems,
      'activo': activo,
      'monto': monto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.usuario == e2?.usuario &&
        e1?.contadorItems == e2?.contadorItems &&
        e1?.activo == e2?.activo &&
        e1?.monto == e2?.monto &&
        listEquality.equals(e1?.camisaSeleccionada, e2?.camisaSeleccionada);
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.contadorItems,
        e?.activo,
        e?.monto,
        e?.camisaSeleccionada
      ]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
