import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavotiteRecord extends FirestoreRecord {
  FavotiteRecord._(
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
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favotite');

  static Stream<FavotiteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavotiteRecord.fromSnapshot(s));

  static Future<FavotiteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavotiteRecord.fromSnapshot(s));

  static FavotiteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavotiteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavotiteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavotiteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavotiteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavotiteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavotiteRecordData({
  String? name,
  double? price,
  String? image,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'image': image,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavotiteRecordDocumentEquality implements Equality<FavotiteRecord> {
  const FavotiteRecordDocumentEquality();

  @override
  bool equals(FavotiteRecord? e1, FavotiteRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description;
  }

  @override
  int hash(FavotiteRecord? e) =>
      const ListEquality().hash([e?.name, e?.price, e?.image, e?.description]);

  @override
  bool isValidKey(Object? o) => o is FavotiteRecord;
}
