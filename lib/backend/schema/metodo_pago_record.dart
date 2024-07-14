import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetodoPagoRecord extends FirestoreRecord {
  MetodoPagoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "metPagoId" field.
  int? _metPagoId;
  int get metPagoId => _metPagoId ?? 0;
  bool hasMetPagoId() => _metPagoId != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _metPagoId = castToType<int>(snapshotData['metPagoId']);
    _tipo = snapshotData['tipo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('metodoPago');

  static Stream<MetodoPagoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MetodoPagoRecord.fromSnapshot(s));

  static Future<MetodoPagoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MetodoPagoRecord.fromSnapshot(s));

  static MetodoPagoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MetodoPagoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MetodoPagoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MetodoPagoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MetodoPagoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MetodoPagoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMetodoPagoRecordData({
  int? metPagoId,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'metPagoId': metPagoId,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MetodoPagoRecordDocumentEquality implements Equality<MetodoPagoRecord> {
  const MetodoPagoRecordDocumentEquality();

  @override
  bool equals(MetodoPagoRecord? e1, MetodoPagoRecord? e2) {
    return e1?.metPagoId == e2?.metPagoId && e1?.tipo == e2?.tipo;
  }

  @override
  int hash(MetodoPagoRecord? e) =>
      const ListEquality().hash([e?.metPagoId, e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is MetodoPagoRecord;
}
