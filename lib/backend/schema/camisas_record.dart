import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CamisasRecord extends FirestoreRecord {
  CamisasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "disponible" field.
  bool? _disponible;
  bool get disponible => _disponible ?? false;
  bool hasDisponible() => _disponible != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _imagen = snapshotData['imagen'] as String?;
    _disponible = snapshotData['disponible'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Camisas');

  static Stream<CamisasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CamisasRecord.fromSnapshot(s));

  static Future<CamisasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CamisasRecord.fromSnapshot(s));

  static CamisasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CamisasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CamisasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CamisasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CamisasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CamisasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCamisasRecordData({
  String? nombre,
  String? descripcion,
  double? precio,
  String? imagen,
  bool? disponible,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio,
      'imagen': imagen,
      'disponible': disponible,
    }.withoutNulls,
  );

  return firestoreData;
}

class CamisasRecordDocumentEquality implements Equality<CamisasRecord> {
  const CamisasRecordDocumentEquality();

  @override
  bool equals(CamisasRecord? e1, CamisasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio &&
        e1?.imagen == e2?.imagen &&
        e1?.disponible == e2?.disponible;
  }

  @override
  int hash(CamisasRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.descripcion, e?.precio, e?.imagen, e?.disponible]);

  @override
  bool isValidKey(Object? o) => o is CamisasRecord;
}
