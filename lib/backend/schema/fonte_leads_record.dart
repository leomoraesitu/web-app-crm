import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FonteLeadsRecord extends FirestoreRecord {
  FonteLeadsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "leads" field.
  int? _leads;
  int get leads => _leads ?? 0;
  bool hasLeads() => _leads != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _leads = castToType<int>(snapshotData['leads']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('fonteLeads')
          : FirebaseFirestore.instance.collectionGroup('fonteLeads');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('fonteLeads').doc(id);

  static Stream<FonteLeadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FonteLeadsRecord.fromSnapshot(s));

  static Future<FonteLeadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FonteLeadsRecord.fromSnapshot(s));

  static FonteLeadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FonteLeadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FonteLeadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FonteLeadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FonteLeadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FonteLeadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFonteLeadsRecordData({
  String? nome,
  int? leads,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'leads': leads,
    }.withoutNulls,
  );

  return firestoreData;
}

class FonteLeadsRecordDocumentEquality implements Equality<FonteLeadsRecord> {
  const FonteLeadsRecordDocumentEquality();

  @override
  bool equals(FonteLeadsRecord? e1, FonteLeadsRecord? e2) {
    return e1?.nome == e2?.nome && e1?.leads == e2?.leads;
  }

  @override
  int hash(FonteLeadsRecord? e) =>
      const ListEquality().hash([e?.nome, e?.leads]);

  @override
  bool isValidKey(Object? o) => o is FonteLeadsRecord;
}
