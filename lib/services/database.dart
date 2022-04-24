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

  final myProvider = Provider((ref) {
    return "1";
  });

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

  Future printGroup(String uid) async {
    QuerySnapshot snapshot = await groupsCollection.get();
    for (var doc in snapshot.docs) {
      //print(doc.data());
    }
    final _docData = snapshot.docs.map((doc) => doc.data()).toList();
    print(_docData);
  }

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
        avatar_url: snapshot['avatar_url'],
        status: snapshot['status'],
        group_id: snapshot['group_id'],
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
          String fileUrl, String tutor_id) async =>
      await assignmentCollection.doc().set({
        'title': title,
        'info': info,
        'deadline': deadline,
        'file_url': fileUrl,
        'tutor_id': tutor_id,
      });

  List<Assingment> _assinmentsListFromSnapshot(QuerySnapshot snapshot) =>
      snapshot.docs
          .map((doc) => Assingment(
                uid: doc.get('uid'),
                title: doc.get('title') ?? '',
                info: doc.get('info') ?? '',
                deadline: doc.get('deadline') ?? '',
                date: doc.get('date') ?? '',
                file_url: doc.get('file_url') ?? '',
                tutor_id: doc.get('tutor_id') ?? '',
              ))
          .toList();

  Assingment _assignmentFromSnapshot(DocumentSnapshot snapshot) => Assingment(
        uid: uid,
        title: snapshot['title'],
        info: snapshot['info'],
        deadline: snapshot['deadline'],
        date: snapshot['date'],
        file_url: snapshot['file_url'],
        tutor_id: snapshot['tutor_id'],
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
            assignment_uid: doc.get('assignment_uid') ?? '',
          ))
      .toList();

  Grade _gradeFromSnapshot(DocumentSnapshot snapshot) => Grade(
        uid: uid,
        value: snapshot['value'],
        assignment_uid: snapshot['assignment_uid'],
      );

  // Создание или обновление данных групп
  Future updateGroupsData(String name, List<String> students_uid) async =>
      await groupsCollection.doc().set({
        'name': name,
        'students_uid': students_uid,
      });

  List<Group> _groupsListFromSnapshot(QuerySnapshot snapshot) => snapshot.docs
      .map((doc) => Group(
            uid: doc.get('uid'),
            name: doc.get('name') ?? '',
            students_ids: doc.get('students_ids') ?? [],
          ))
      .toList();

  Group _groupsFromSnapshot(DocumentSnapshot snapshot) => Group(
        uid: uid,
        name: snapshot['name'],
        students_ids: snapshot['students_ids'],
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

  Stream<QuerySnapshot> get groups => gradesCollection.snapshots();
  Stream<List<Grade>> get groupsList =>
      gradesCollection.snapshots().map(_gradesListFromSnapshot);
}
