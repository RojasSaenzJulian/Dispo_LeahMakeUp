import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnvioRecord extends FirestoreRecord {
  EnvioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "canton" field.
  String? _canton;
  String get canton => _canton ?? '';
  bool hasCanton() => _canton != null;

  // "distrito" field.
  String? _distrito;
  String get distrito => _distrito ?? '';
  bool hasDistrito() => _distrito != null;

  // "detalle" field.
  String? _detalle;
  String get detalle => _detalle ?? '';
  bool hasDetalle() => _detalle != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "codPostal" field.
  String? _codPostal;
  String get codPostal => _codPostal ?? '';
  bool hasCodPostal() => _codPostal != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _provincia = snapshotData['provincia'] as String?;
    _canton = snapshotData['canton'] as String?;
    _distrito = snapshotData['distrito'] as String?;
    _detalle = snapshotData['detalle'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _codPostal = snapshotData['codPostal'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('envio');

  static Stream<EnvioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnvioRecord.fromSnapshot(s));

  static Future<EnvioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnvioRecord.fromSnapshot(s));

  static EnvioRecord fromSnapshot(DocumentSnapshot snapshot) => EnvioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnvioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnvioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnvioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnvioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnvioRecordData({
  String? provincia,
  String? canton,
  String? distrito,
  String? detalle,
  String? telefono,
  String? codPostal,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'provincia': provincia,
      'canton': canton,
      'distrito': distrito,
      'detalle': detalle,
      'telefono': telefono,
      'codPostal': codPostal,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnvioRecordDocumentEquality implements Equality<EnvioRecord> {
  const EnvioRecordDocumentEquality();

  @override
  bool equals(EnvioRecord? e1, EnvioRecord? e2) {
    return e1?.provincia == e2?.provincia &&
        e1?.canton == e2?.canton &&
        e1?.distrito == e2?.distrito &&
        e1?.detalle == e2?.detalle &&
        e1?.telefono == e2?.telefono &&
        e1?.codPostal == e2?.codPostal &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(EnvioRecord? e) => const ListEquality().hash([
        e?.provincia,
        e?.canton,
        e?.distrito,
        e?.detalle,
        e?.telefono,
        e?.codPostal,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is EnvioRecord;
}
