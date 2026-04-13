import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "emisor" field.
  DocumentReference? _emisor;
  DocumentReference? get emisor => _emisor;
  bool hasEmisor() => _emisor != null;

  // "receptor" field.
  DocumentReference? _receptor;
  DocumentReference? get receptor => _receptor;
  bool hasReceptor() => _receptor != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _mensaje = snapshotData['mensaje'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _emisor = snapshotData['emisor'] as DocumentReference?;
    _receptor = snapshotData['receptor'] as DocumentReference?;
    _video = snapshotData['video'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _estado = snapshotData['estado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? mensaje,
  DateTime? fecha,
  DocumentReference? emisor,
  DocumentReference? receptor,
  String? video,
  String? imagen,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mensaje': mensaje,
      'fecha': fecha,
      'emisor': emisor,
      'receptor': receptor,
      'video': video,
      'imagen': imagen,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    return e1?.mensaje == e2?.mensaje &&
        e1?.fecha == e2?.fecha &&
        e1?.emisor == e2?.emisor &&
        e1?.receptor == e2?.receptor &&
        e1?.video == e2?.video &&
        e1?.imagen == e2?.imagen &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.mensaje,
        e?.fecha,
        e?.emisor,
        e?.receptor,
        e?.video,
        e?.imagen,
        e?.estado
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
