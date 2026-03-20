import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeadsRecord extends FirestoreRecord {
  LeadsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "descritivo" field.
  String? _descritivo;
  String get descritivo => _descritivo ?? '';
  bool hasDescritivo() => _descritivo != null;

  // "fonte" field.
  String? _fonte;
  String get fonte => _fonte ?? '';
  bool hasFonte() => _fonte != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "data_criacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "userNome" field.
  String? _userNome;
  String get userNome => _userNome ?? '';
  bool hasUserNome() => _userNome != null;

  // "userLogo" field.
  String? _userLogo;
  String get userLogo => _userLogo ?? '';
  bool hasUserLogo() => _userLogo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _descritivo = snapshotData['descritivo'] as String?;
    _fonte = snapshotData['fonte'] as String?;
    _status = snapshotData['status'] as String?;
    _email = snapshotData['email'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _dataCriacao = snapshotData['data_criacao'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _userNome = snapshotData['userNome'] as String?;
    _userLogo = snapshotData['userLogo'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('leads')
          : FirebaseFirestore.instance.collectionGroup('leads');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('leads').doc(id);

  static Stream<LeadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeadsRecord.fromSnapshot(s));

  static Future<LeadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeadsRecord.fromSnapshot(s));

  static LeadsRecord fromSnapshot(DocumentSnapshot snapshot) => LeadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeadsRecordData({
  String? nome,
  String? descritivo,
  String? fonte,
  String? status,
  String? email,
  String? telefone,
  DateTime? dataCriacao,
  DocumentReference? userRef,
  String? userNome,
  String? userLogo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'descritivo': descritivo,
      'fonte': fonte,
      'status': status,
      'email': email,
      'telefone': telefone,
      'data_criacao': dataCriacao,
      'userRef': userRef,
      'userNome': userNome,
      'userLogo': userLogo,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeadsRecordDocumentEquality implements Equality<LeadsRecord> {
  const LeadsRecordDocumentEquality();

  @override
  bool equals(LeadsRecord? e1, LeadsRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.descritivo == e2?.descritivo &&
        e1?.fonte == e2?.fonte &&
        e1?.status == e2?.status &&
        e1?.email == e2?.email &&
        e1?.telefone == e2?.telefone &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.userRef == e2?.userRef &&
        e1?.userNome == e2?.userNome &&
        e1?.userLogo == e2?.userLogo;
  }

  @override
  int hash(LeadsRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.descritivo,
        e?.fonte,
        e?.status,
        e?.email,
        e?.telefone,
        e?.dataCriacao,
        e?.userRef,
        e?.userNome,
        e?.userLogo
      ]);

  @override
  bool isValidKey(Object? o) => o is LeadsRecord;
}
