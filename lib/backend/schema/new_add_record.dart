import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewAddRecord extends FirestoreRecord {
  NewAddRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _company = snapshotData['company'] as String?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('new_add');

  static Stream<NewAddRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewAddRecord.fromSnapshot(s));

  static Future<NewAddRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewAddRecord.fromSnapshot(s));

  static NewAddRecord fromSnapshot(DocumentSnapshot snapshot) => NewAddRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewAddRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewAddRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewAddRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewAddRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewAddRecordData({
  String? name,
  double? price,
  String? company,
  String? image,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'company': company,
      'image': image,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewAddRecordDocumentEquality implements Equality<NewAddRecord> {
  const NewAddRecordDocumentEquality();

  @override
  bool equals(NewAddRecord? e1, NewAddRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.company == e2?.company &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description;
  }

  @override
  int hash(NewAddRecord? e) => const ListEquality()
      .hash([e?.name, e?.price, e?.company, e?.image, e?.description]);

  @override
  bool isValidKey(Object? o) => o is NewAddRecord;
}
