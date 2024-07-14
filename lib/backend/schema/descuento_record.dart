import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DescuentoRecord extends FirestoreRecord {
  DescuentoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descuentoId" field.
  int? _descuentoId;
  int get descuentoId => _descuentoId ?? 0;
  bool hasDescuentoId() => _descuentoId != null;

  // "porcentDesc" field.
  double? _porcentDesc;
  double get porcentDesc => _porcentDesc ?? 0.0;
  bool hasPorcentDesc() => _porcentDesc != null;

  void _initializeFields() {
    _descuentoId = castToType<int>(snapshotData['descuentoId']);
    _porcentDesc = castToType<double>(snapshotData['porcentDesc']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('descuento');

  static Stream<DescuentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DescuentoRecord.fromSnapshot(s));

  static Future<DescuentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DescuentoRecord.fromSnapshot(s));

  static DescuentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DescuentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DescuentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DescuentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DescuentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DescuentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDescuentoRecordData({
  int? descuentoId,
  double? porcentDesc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descuentoId': descuentoId,
      'porcentDesc': porcentDesc,
    }.withoutNulls,
  );

  return firestoreData;
}

class DescuentoRecordDocumentEquality implements Equality<DescuentoRecord> {
  const DescuentoRecordDocumentEquality();

  @override
  bool equals(DescuentoRecord? e1, DescuentoRecord? e2) {
    return e1?.descuentoId == e2?.descuentoId &&
        e1?.porcentDesc == e2?.porcentDesc;
  }

  @override
  int hash(DescuentoRecord? e) =>
      const ListEquality().hash([e?.descuentoId, e?.porcentDesc]);

  @override
  bool isValidKey(Object? o) => o is DescuentoRecord;
}
