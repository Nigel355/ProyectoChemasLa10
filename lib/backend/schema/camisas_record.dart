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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
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
  String? name,
  String? description,
  String? specifications,
  double? price,
  bool? onSale,
  double? salePrice,
  int? quantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
    }.withoutNulls,
  );

  return firestoreData;
}

class CamisasRecordDocumentEquality implements Equality<CamisasRecord> {
  const CamisasRecordDocumentEquality();

  @override
  bool equals(CamisasRecord? e1, CamisasRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity;
  }

  @override
  int hash(CamisasRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.onSale,
        e?.salePrice,
        e?.quantity
      ]);

  @override
  bool isValidKey(Object? o) => o is CamisasRecord;
}
