import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagosRecord extends FirestoreRecord {
  PagosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orden" field.
  DocumentReference? _orden;
  DocumentReference? get orden => _orden;
  bool hasOrden() => _orden != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "metodo" field.
  String? _metodo;
  String get metodo => _metodo ?? '';
  bool hasMetodo() => _metodo != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "referencia" field.
  String? _referencia;
  String get referencia => _referencia ?? '';
  bool hasReferencia() => _referencia != null;

  void _initializeFields() {
    _orden = snapshotData['orden'] as DocumentReference?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _metodo = snapshotData['metodo'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _referencia = snapshotData['referencia'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pagos');

  static Stream<PagosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagosRecord.fromSnapshot(s));

  static Future<PagosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagosRecord.fromSnapshot(s));

  static PagosRecord fromSnapshot(DocumentSnapshot snapshot) => PagosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagosRecordData({
  DocumentReference? orden,
  DocumentReference? usuario,
  String? metodo,
  double? monto,
  DateTime? fecha,
  String? referencia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orden': orden,
      'usuario': usuario,
      'metodo': metodo,
      'monto': monto,
      'fecha': fecha,
      'referencia': referencia,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagosRecordDocumentEquality implements Equality<PagosRecord> {
  const PagosRecordDocumentEquality();

  @override
  bool equals(PagosRecord? e1, PagosRecord? e2) {
    return e1?.orden == e2?.orden &&
        e1?.usuario == e2?.usuario &&
        e1?.metodo == e2?.metodo &&
        e1?.monto == e2?.monto &&
        e1?.fecha == e2?.fecha &&
        e1?.referencia == e2?.referencia;
  }

  @override
  int hash(PagosRecord? e) => const ListEquality().hash(
      [e?.orden, e?.usuario, e?.metodo, e?.monto, e?.fecha, e?.referencia]);

  @override
  bool isValidKey(Object? o) => o is PagosRecord;
}
