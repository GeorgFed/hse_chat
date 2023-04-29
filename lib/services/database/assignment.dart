import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../app/models/assingment.dart';

@lazySingleton
class AssignmentService {
  final CollectionReference chatCollection =
      FirebaseFirestore.instance.collection('assigmnents');

  Future createAssignmnetData(
    final String uid,
    String title,
    String info,
    DateTime date,
    String tutorId,
    String? fileUrl,
    DateTime? deadline,
  ) async {
    await chatCollection.doc().set({
      'title': title,
      'info': info,
      'date': DateFormat('yyyy-MM-dd – kk:mm').format(date),
      'deadline': DateFormat('yyyy-MM-dd – kk:mm').format(deadline!) ?? '',
      'file_url': fileUrl ?? '',
      'tutor_id': tutorId,
    });
  }

  List<Assingment> _assignmentsListFromSnapshot(QuerySnapshot snapshot) =>
      snapshot.docs
          .map(
            (doc) => Assingment(
              uid: doc.id,
              title: doc.get('title') ?? '',
              info: doc.get('info'),
              date: convertDateTimeFromString(doc.get('date')),
              deadline: convertDateTimeFromString(doc.get('deadline')),
              fileUrl: doc.get('file_url'),
              tutorId: doc.get('tutor_id'),
            ),
          )
          .toList();

  Assingment messageFromSnapshotData(
    Map<String, dynamic> snapshot,
    String? id,
  ) =>
      Assingment(
        uid: id ?? '',
        title: snapshot['title'] ?? '',
        info: snapshot['info'],
        date: convertDateTimeFromString(snapshot['date']),
        deadline: convertDateTimeFromString(snapshot['deadline']),
        fileUrl: snapshot['file_url'],
        tutorId: snapshot['tutor_id'],
      );

  DateTime convertDateTimeFromString(String dateInString) {
    var date = DateFormat('yyyy-MM-dd – kk:mm').parse(dateInString);
    return date;
  }
}
