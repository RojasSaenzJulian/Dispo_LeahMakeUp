import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarcaRecord extends FirestoreRecord {
  MarcaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "idMarca" field.
  int? _idMarca;
  int get idMarca => _idMarca ?? 0;
  bool hasIdMarca() => _idMarca != null;

  // "nombreMarca" field.
  String? _nombreMarca;
  String get nombreMarca => _nombreMarca ?? '';
  bool hasNombreMarca() => _nombreMarca != null;

  // "marcaId" field.
  int? _marcaId;
  int get marcaId => _marcaId ?? 0;
  bool hasMarcaId() => _marcaId != null;

  void _initializeFields() {
    _idMarca = castToType<int>(snapshotData['idMarca']);
    _nombreMarca = snapshotData['nombreMarca'] as String?;
    _marcaId = castToType<int>(snapshotData['marcaId']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('marca');

  static Stream<MarcaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarcaRecord.fromSnapshot(s));

  static Future<MarcaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarcaRecord.fromSnapshot(s));

  static MarcaRecord fromSnapshot(DocumentSnapshot snapshot) => MarcaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarcaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarcaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarcaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarcaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarcaRecordData({
  int? idMarca,
  String? nombreMarca,
  int? marcaId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idMarca': idMarca,
      'nombreMarca': nombreMarca,
      'marcaId': marcaId,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarcaRecordDocumentEquality implements Equality<MarcaRecord> {
  const MarcaRecordDocumentEquality();

  @override
  bool equals(MarcaRecord? e1, MarcaRecord? e2) {
    return e1?.idMarca == e2?.idMarca &&
        e1?.nombreMarca == e2?.nombreMarca &&
        e1?.marcaId == e2?.marcaId;
  }

  @override
  int hash(MarcaRecord? e) =>
      const ListEquality().hash([e?.idMarca, e?.nombreMarca, e?.marcaId]);

  @override
  bool isValidKey(Object? o) => o is MarcaRecord;
}
