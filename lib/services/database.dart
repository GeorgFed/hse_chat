import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod/riverpod.dart';

import '../app/models/chat_user.dart';
import '../app/models/chat_user_data.dart';
import '../app/models/assingment.dart';
import '../app/models/grade.dart';
import '../app/models/group.dart';

class DataBaseService {
  final String uid;

  DataBaseService({required this.uid});

  // Колекция пользователей
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  // Колекция заданий
  final CollectionReference assignmentCollection =
      FirebaseFirestore.instance.collection('assignments');

  // Колекция оценок
  final CollectionReference gradesCollection =
      FirebaseFirestore.instance.collection('grades');
  // Колекция групп
  final CollectionReference groupsCollection =
      FirebaseFirestore.instance.collection('groups');

  // Создание или обновление данных пользователя
  Future updateUserData(String name, String avatarUrl, String status) async =>
      await usersCollection.doc(uid).set({
        'name': name,
        'avatar_url': avatarUrl,
        'status': status,
        'group': 'group_uid',
        'grades': ['grades_list_uid'],
        'tasks': ['tasks_list_uid'],
        'groups': ['groupd_list_uid'],
      });

  ChatUserData _userDataFromSnapshot(DocumentSnapshot snapshot) => ChatUserData(
        uid: uid,
        name: snapshot['name'],
        avatarUrl: snapshot['avatarUrl'],
        status: snapshot['status'],
        groupId: snapshot['group_id'],
      );

  Future<bool> isUserStudent() async {
    DocumentSnapshot snapshot = await usersCollection.doc(uid).get();
    if (snapshot['status'] == 'student') {
      return true;
    }
    return false;
  }

  // Создание или обновление данных задания
  Future updateAssinmentData(String title, String info, String deadline,
          String fileUrl, String tutorId) async =>
      await assignmentCollection.doc().set({
        'title': title,
        'info': info,
        'deadline': deadline,
        'fileUrl': fileUrl,
        'tutorId': tutorId,
      });

  List<Assingment> _assinmentsListFromSnapshot(QuerySnapshot snapshot) =>
      snapshot.docs
          .map((doc) => Assingment(
                uid: doc.get('uid'),
                title: doc.get('title') ?? '',
                info: doc.get('info') ?? '',
                deadline: doc.get('deadline') ?? '',
                date: doc.get('date') ?? '',
                fileUrl: doc.get('fileUrl') ?? '',
                tutorId: doc.get('tutorId') ?? '',
              ))
          .toList();

  Assingment _assignmentFromSnapshot(DocumentSnapshot snapshot) => Assingment(
        uid: uid,
        title: snapshot['title'],
        info: snapshot['info'],
        deadline: snapshot['deadline'],
        date: snapshot['date'],
        fileUrl: snapshot['fileUrl'],
        tutorId: snapshot['tutorId'],
      );

  // Создание или обновление данных оценок
  Future updateGradesData(int value, String assignment_uid) async =>
      await gradesCollection.doc().set({
        'value': value,
        'assignment_uid': assignment_uid,
      });

  List<Grade> _gradesListFromSnapshot(QuerySnapshot snapshot) => snapshot.docs
      .map((doc) => Grade(
            uid: doc.get('uid'),
            value: doc.get('value') ?? 0,
            assignmentUid: doc.get('assignmentUid') ?? '',
          ))
      .toList();

  Grade _gradeFromSnapshot(DocumentSnapshot snapshot) => Grade(
        uid: uid,
        value: snapshot['value'],
        assignmentUid: snapshot['assignmentUid'],
      );

  Stream<QuerySnapshot> get users => usersCollection.snapshots();
  Stream<ChatUserData> get userData =>
      usersCollection.doc(uid).snapshots().map(_userDataFromSnapshot);

  Stream<QuerySnapshot> get assignments => assignmentCollection.snapshots();
  Stream<List<Assingment>> get assignmentsList =>
      assignmentCollection.snapshots().map(_assinmentsListFromSnapshot);

  Stream<QuerySnapshot> get grades => gradesCollection.snapshots();
  Stream<List<Grade>> get gradesList =>
      gradesCollection.snapshots().map(_gradesListFromSnapshot);
}
