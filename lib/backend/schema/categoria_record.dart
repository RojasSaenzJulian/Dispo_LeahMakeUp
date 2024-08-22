import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaRecord extends FirestoreRecord {
  CategoriaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreCategoria" field.
  String? _nombreCategoria;
  String get nombreCategoria => _nombreCategoria ?? '';
  bool hasNombreCategoria() => _nombreCategoria != null;

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  void _initializeFields() {
    _nombreCategoria = snapshotData['nombreCategoria'] as String?;
    _producto = snapshotData['producto'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categoria');

  static Stream<CategoriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriaRecord.fromSnapshot(s));

  static Future<CategoriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriaRecord.fromSnapshot(s));

  static CategoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriaRecordData({
  String? nombreCategoria,
  DocumentReference? producto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCategoria': nombreCategoria,
      'producto': producto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriaRecordDocumentEquality implements Equality<CategoriaRecord> {
  const CategoriaRecordDocumentEquality();

  @override
  bool equals(CategoriaRecord? e1, CategoriaRecord? e2) {
    return e1?.nombreCategoria == e2?.nombreCategoria &&
        e1?.producto == e2?.producto;
  }

  @override
  int hash(CategoriaRecord? e) =>
      const ListEquality().hash([e?.nombreCategoria, e?.producto]);

  @override
  bool isValidKey(Object? o) => o is CategoriaRecord;
}
