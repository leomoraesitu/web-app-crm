import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresasRecord extends FirestoreRecord {
  EmpresasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "admRef" field.
  DocumentReference? _admRef;
  DocumentReference? get admRef => _admRef;
  bool hasAdmRef() => _admRef != null;

  // "colaboradores" field.
  List<DocumentReference>? _colaboradores;
  List<DocumentReference> get colaboradores => _colaboradores ?? const [];
  bool hasColaboradores() => _colaboradores != null;

  // "leadsRefLigacoes" field.
  List<DocumentReference>? _leadsRefLigacoes;
  List<DocumentReference> get leadsRefLigacoes => _leadsRefLigacoes ?? const [];
  bool hasLeadsRefLigacoes() => _leadsRefLigacoes != null;

  // "leadsRefReunioes" field.
  List<DocumentReference>? _leadsRefReunioes;
  List<DocumentReference> get leadsRefReunioes => _leadsRefReunioes ?? const [];
  bool hasLeadsRefReunioes() => _leadsRefReunioes != null;

  // "leadsRefVendas" field.
  List<DocumentReference>? _leadsRefVendas;
  List<DocumentReference> get leadsRefVendas => _leadsRefVendas ?? const [];
  bool hasLeadsRefVendas() => _leadsRefVendas != null;

  // "leadsRefPerdidos" field.
  List<DocumentReference>? _leadsRefPerdidos;
  List<DocumentReference> get leadsRefPerdidos => _leadsRefPerdidos ?? const [];
  bool hasLeadsRefPerdidos() => _leadsRefPerdidos != null;

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

  // "logo_hz" field.
  String? _logoHz;
  String get logoHz => _logoHz ?? '';
  bool hasLogoHz() => _logoHz != null;

  // "primaryColor" field.
  String? _primaryColor;
  String get primaryColor => _primaryColor ?? '';
  bool hasPrimaryColor() => _primaryColor != null;

  // "secondaryColor" field.
  String? _secondaryColor;
  String get secondaryColor => _secondaryColor ?? '';
  bool hasSecondaryColor() => _secondaryColor != null;

  // "logo_dk" field.
  String? _logoDk;
  String get logoDk => _logoDk ?? '';
  bool hasLogoDk() => _logoDk != null;

  // "logo_hz_dk" field.
  String? _logoHzDk;
  String get logoHzDk => _logoHzDk ?? '';
  bool hasLogoHzDk() => _logoHzDk != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _logo = snapshotData['logo'] as String?;
    _admRef = snapshotData['admRef'] as DocumentReference?;
    _colaboradores = getDataList(snapshotData['colaboradores']);
    _leadsRefLigacoes = getDataList(snapshotData['leadsRefLigacoes']);
    _leadsRefReunioes = getDataList(snapshotData['leadsRefReunioes']);
    _leadsRefVendas = getDataList(snapshotData['leadsRefVendas']);
    _leadsRefPerdidos = getDataList(snapshotData['leadsRefPerdidos']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _logoHz = snapshotData['logo_hz'] as String?;
    _primaryColor = snapshotData['primaryColor'] as String?;
    _secondaryColor = snapshotData['secondaryColor'] as String?;
    _logoDk = snapshotData['logo_dk'] as String?;
    _logoHzDk = snapshotData['logo_hz_dk'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresas');

  static Stream<EmpresasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresasRecord.fromSnapshot(s));

  static Future<EmpresasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresasRecord.fromSnapshot(s));

  static EmpresasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresasRecordData({
  String? nome,
  String? logo,
  DocumentReference? admRef,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? logoHz,
  String? primaryColor,
  String? secondaryColor,
  String? logoDk,
  String? logoHzDk,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'logo': logo,
      'admRef': admRef,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'logo_hz': logoHz,
      'primaryColor': primaryColor,
      'secondaryColor': secondaryColor,
      'logo_dk': logoDk,
      'logo_hz_dk': logoHzDk,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresasRecordDocumentEquality implements Equality<EmpresasRecord> {
  const EmpresasRecordDocumentEquality();

  @override
  bool equals(EmpresasRecord? e1, EmpresasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.logo == e2?.logo &&
        e1?.admRef == e2?.admRef &&
        listEquality.equals(e1?.colaboradores, e2?.colaboradores) &&
        listEquality.equals(e1?.leadsRefLigacoes, e2?.leadsRefLigacoes) &&
        listEquality.equals(e1?.leadsRefReunioes, e2?.leadsRefReunioes) &&
        listEquality.equals(e1?.leadsRefVendas, e2?.leadsRefVendas) &&
        listEquality.equals(e1?.leadsRefPerdidos, e2?.leadsRefPerdidos) &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.logoHz == e2?.logoHz &&
        e1?.primaryColor == e2?.primaryColor &&
        e1?.secondaryColor == e2?.secondaryColor &&
        e1?.logoDk == e2?.logoDk &&
        e1?.logoHzDk == e2?.logoHzDk;
  }

  @override
  int hash(EmpresasRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.logo,
        e?.admRef,
        e?.colaboradores,
        e?.leadsRefLigacoes,
        e?.leadsRefReunioes,
        e?.leadsRefVendas,
        e?.leadsRefPerdidos,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.logoHz,
        e?.primaryColor,
        e?.secondaryColor,
        e?.logoDk,
        e?.logoHzDk
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpresasRecord;
}
