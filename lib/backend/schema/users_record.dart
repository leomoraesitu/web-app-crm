import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "empresaRef" field.
  DocumentReference? _empresaRef;
  DocumentReference? get empresaRef => _empresaRef;
  bool hasEmpresaRef() => _empresaRef != null;

  // "totalLeads" field.
  int? _totalLeads;
  int get totalLeads => _totalLeads ?? 0;
  bool hasTotalLeads() => _totalLeads != null;

  // "totalLigacoes" field.
  int? _totalLigacoes;
  int get totalLigacoes => _totalLigacoes ?? 0;
  bool hasTotalLigacoes() => _totalLigacoes != null;

  // "totalReunioes" field.
  int? _totalReunioes;
  int get totalReunioes => _totalReunioes ?? 0;
  bool hasTotalReunioes() => _totalReunioes != null;

  // "totalVendas" field.
  int? _totalVendas;
  int get totalVendas => _totalVendas ?? 0;
  bool hasTotalVendas() => _totalVendas != null;

  // "totalPerdidos" field.
  int? _totalPerdidos;
  int get totalPerdidos => _totalPerdidos ?? 0;
  bool hasTotalPerdidos() => _totalPerdidos != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _empresaRef = snapshotData['empresaRef'] as DocumentReference?;
    _totalLeads = castToType<int>(snapshotData['totalLeads']);
    _totalLigacoes = castToType<int>(snapshotData['totalLigacoes']);
    _totalReunioes = castToType<int>(snapshotData['totalReunioes']);
    _totalVendas = castToType<int>(snapshotData['totalVendas']);
    _totalPerdidos = castToType<int>(snapshotData['totalPerdidos']);
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  bool? isAdmin,
  DocumentReference? empresaRef,
  int? totalLeads,
  int? totalLigacoes,
  int? totalReunioes,
  int? totalVendas,
  int? totalPerdidos,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'isAdmin': isAdmin,
      'empresaRef': empresaRef,
      'totalLeads': totalLeads,
      'totalLigacoes': totalLigacoes,
      'totalReunioes': totalReunioes,
      'totalVendas': totalVendas,
      'totalPerdidos': totalPerdidos,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.empresaRef == e2?.empresaRef &&
        e1?.totalLeads == e2?.totalLeads &&
        e1?.totalLigacoes == e2?.totalLigacoes &&
        e1?.totalReunioes == e2?.totalReunioes &&
        e1?.totalVendas == e2?.totalVendas &&
        e1?.totalPerdidos == e2?.totalPerdidos &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.isAdmin,
        e?.empresaRef,
        e?.totalLeads,
        e?.totalLigacoes,
        e?.totalReunioes,
        e?.totalVendas,
        e?.totalPerdidos,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
