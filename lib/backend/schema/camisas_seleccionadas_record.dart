import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CamisasSeleccionadasRecord extends FirestoreRecord {
  CamisasSeleccionadasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "camisa" field.
  DocumentReference? _camisa;
  DocumentReference? get camisa => _camisa;
  bool hasCamisa() => _camisa != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "carrito" field.
  DocumentReference? _carrito;
  DocumentReference? get carrito => _carrito;
  bool hasCarrito() => _carrito != null;

  // "talla" field.
  String? _talla;
  String get talla => _talla ?? '';
  bool hasTalla() => _talla != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _camisa = snapshotData['camisa'] as DocumentReference?;
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _carrito = snapshotData['carrito'] as DocumentReference?;
    _talla = snapshotData['talla'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('camisasSeleccionadas');

  static Stream<CamisasSeleccionadasRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CamisasSeleccionadasRecord.fromSnapshot(s));

  static Future<CamisasSeleccionadasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CamisasSeleccionadasRecord.fromSnapshot(s));

  static CamisasSeleccionadasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CamisasSeleccionadasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CamisasSeleccionadasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CamisasSeleccionadasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CamisasSeleccionadasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CamisasSeleccionadasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCamisasSeleccionadasRecordData({
  DocumentReference? camisa,
  String? nombre,
  String? descripcion,
  String? imagen,
  double? precio,
  double? subtotal,
  DocumentReference? carrito,
  String? talla,
  DocumentReference? usuario,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'camisa': camisa,
      'nombre': nombre,
      'descripcion': descripcion,
      'imagen': imagen,
      'precio': precio,
      'subtotal': subtotal,
      'carrito': carrito,
      'talla': talla,
      'usuario': usuario,
      'cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class CamisasSeleccionadasRecordDocumentEquality
    implements Equality<CamisasSeleccionadasRecord> {
  const CamisasSeleccionadasRecordDocumentEquality();

  @override
  bool equals(CamisasSeleccionadasRecord? e1, CamisasSeleccionadasRecord? e2) {
    return e1?.camisa == e2?.camisa &&
        e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen &&
        e1?.precio == e2?.precio &&
        e1?.subtotal == e2?.subtotal &&
        e1?.carrito == e2?.carrito &&
        e1?.talla == e2?.talla &&
        e1?.usuario == e2?.usuario &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(CamisasSeleccionadasRecord? e) => const ListEquality().hash([
        e?.camisa,
        e?.nombre,
        e?.descripcion,
        e?.imagen,
        e?.precio,
        e?.subtotal,
        e?.carrito,
        e?.talla,
        e?.usuario,
        e?.cantidad
      ]);

  @override
  bool isValidKey(Object? o) => o is CamisasSeleccionadasRecord;
}
