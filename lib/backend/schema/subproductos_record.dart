import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubproductosRecord extends FirestoreRecord {
  SubproductosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  void _initializeFields() {
    _producto = snapshotData['producto'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subproductos');

  static Stream<SubproductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubproductosRecord.fromSnapshot(s));

  static Future<SubproductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubproductosRecord.fromSnapshot(s));

  static SubproductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubproductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubproductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubproductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubproductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubproductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubproductosRecordData({
  DocumentReference? producto,
  int? cantidad,
  double? subtotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'producto': producto,
      'cantidad': cantidad,
      'subtotal': subtotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubproductosRecordDocumentEquality
    implements Equality<SubproductosRecord> {
  const SubproductosRecordDocumentEquality();

  @override
  bool equals(SubproductosRecord? e1, SubproductosRecord? e2) {
    return e1?.producto == e2?.producto &&
        e1?.cantidad == e2?.cantidad &&
        e1?.subtotal == e2?.subtotal;
  }

  @override
  int hash(SubproductosRecord? e) =>
      const ListEquality().hash([e?.producto, e?.cantidad, e?.subtotal]);

  @override
  bool isValidKey(Object? o) => o is SubproductosRecord;
}
