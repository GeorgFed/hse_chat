import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../app/models/grade.dart';
import '../database.dart';

late final chatDatabaseServiceProvider =
    Provider((ref) => GradeDatabaseService());

@lazySingleton
class GradeDatabaseService {
  final CollectionReference gradesCollection =
      FirebaseFirestore.instance.collection('grades');

  // Создание или обновление данных оценок
  Future createGradesData(
    int value,
    String assignmentUid,
    String userUid,
  ) async {
    const uuid = Uuid();
    final newId = uuid.v1();
    await gradesCollection.doc(newId).set({
      'value': value,
      'assignment_uid': assignmentUid,
    });
    var documentReference = gradesCollection.doc(newId);
    var grade = _gradeFromSnapshot(await documentReference.get());
    var dataBaseService = DataBaseService();
    dataBaseService.updateUserGrade(userUid, grade);
  }

  Future<List<Grade>> getGradesOfAssignment(String assignmentUid) async {
    var querySnapshot = await gradesCollection
        .where('assignment_uid', isEqualTo: assignmentUid)
        .get();
    var grades = _gradesListFromSnapshot(querySnapshot);
    return grades;
  }

  List<Grade> _gradesListFromSnapshot(QuerySnapshot snapshot) => snapshot.docs
      .map(
        (doc) => Grade(
          uid: doc.get('uid'),
          value: doc.get('value') ?? 0,
          assignmentUid: doc.get('assignmentUid') ?? '',
        ),
      )
      .toList();

  Grade _gradeFromSnapshot(DocumentSnapshot snapshot) => Grade(
        uid: snapshot.id,
        value: snapshot['value'],
        assignmentUid: snapshot['assignmentUid'],
      );
}
