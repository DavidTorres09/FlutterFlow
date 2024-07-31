import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalificacionesRecord extends FirestoreRecord {
  CalificacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "nota" field.
  int? _nota;
  int get nota => _nota ?? 0;
  bool hasNota() => _nota != null;

  // "materia" field.
  String? _materia;
  String get materia => _materia ?? '';
  bool hasMateria() => _materia != null;

  void _initializeFields() {
    _user = snapshotData['user'] as String?;
    _nota = castToType<int>(snapshotData['nota']);
    _materia = snapshotData['materia'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calificaciones');

  static Stream<CalificacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalificacionesRecord.fromSnapshot(s));

  static Future<CalificacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalificacionesRecord.fromSnapshot(s));

  static CalificacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalificacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalificacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalificacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalificacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalificacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalificacionesRecordData({
  String? user,
  int? nota,
  String? materia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'nota': nota,
      'materia': materia,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalificacionesRecordDocumentEquality
    implements Equality<CalificacionesRecord> {
  const CalificacionesRecordDocumentEquality();

  @override
  bool equals(CalificacionesRecord? e1, CalificacionesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.nota == e2?.nota &&
        e1?.materia == e2?.materia;
  }

  @override
  int hash(CalificacionesRecord? e) =>
      const ListEquality().hash([e?.user, e?.nota, e?.materia]);

  @override
  bool isValidKey(Object? o) => o is CalificacionesRecord;
}
