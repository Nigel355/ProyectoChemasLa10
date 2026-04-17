import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnviosRecord extends FirestoreRecord {
  EnviosRecord._(
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

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "costo" field.
  double? _costo;
  double get costo => _costo ?? 0.0;
  bool hasCosto() => _costo != null;

  void _initializeFields() {
    _orden = snapshotData['orden'] as DocumentReference?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _direccion = snapshotData['direccion'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _costo = castToType<double>(snapshotData['costo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('envios');

  static Stream<EnviosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnviosRecord.fromSnapshot(s));

  static Future<EnviosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnviosRecord.fromSnapshot(s));

  static EnviosRecord fromSnapshot(DocumentSnapshot snapshot) => EnviosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnviosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnviosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnviosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnviosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnviosRecordData({
  DocumentReference? orden,
  DocumentReference? usuario,
  String? direccion,
  String? tipo,
  double? costo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orden': orden,
      'usuario': usuario,
      'direccion': direccion,
      'tipo': tipo,
      'costo': costo,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnviosRecordDocumentEquality implements Equality<EnviosRecord> {
  const EnviosRecordDocumentEquality();

  @override
  bool equals(EnviosRecord? e1, EnviosRecord? e2) {
    return e1?.orden == e2?.orden &&
        e1?.usuario == e2?.usuario &&
        e1?.direccion == e2?.direccion &&
        e1?.tipo == e2?.tipo &&
        e1?.costo == e2?.costo;
  }

  @override
  int hash(EnviosRecord? e) => const ListEquality()
      .hash([e?.orden, e?.usuario, e?.direccion, e?.tipo, e?.costo]);

  @override
  bool isValidKey(Object? o) => o is EnviosRecord;
}
