import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app/models/assingment.dart';
import '../app/models/chat.dart';
import '../app/models/chat_user_data.dart';
import '../app/models/grade.dart';
import 'auth.dart';
import 'database/grade.dart';

late final dataBaseServiceProvider = Provider(
  (ref) => DataBaseService(),
);

class DataBaseService {
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
  Future createUserData(
          String uid, String name, String avatarUrl, String status) async =>
      await usersCollection.doc(uid).set({
        'name': name,
        'avatarUrl': avatarUrl,
        'status': status,
        'group': '',
        'grades': [],
        'tasks': [],
        'groups': [],
      });

  Future<List<ChatUserData>> getAllUsers() async {
    var querySnapshot = await usersCollection.get();
    return _chatUsersDataFromSnapshot(querySnapshot);
  }

  Future updateUserData(ChatUserData chatUserData) async =>
      await usersCollection.doc(chatUserData.uid).set({
        'name': chatUserData.name,
        'avatarUrl': chatUserData.avatarUrl,
        'status': chatUserData.status,
        'group': chatUserData.groupId,
        'grades': chatUserData.gradesList,
        'tasks': chatUserData.assignmentsList,
        'groups': [],
      });

  Future updateUserGrade(String uid, Grade grade) async {
    var documentReference = usersCollection.doc(uid);
    var user = _userDataFromSnapshot(await documentReference.get());
    user.gradesList.add(grade.uid);
    updateUserData(user);
  }

  Future addChatToUser(String userUid, String chatUid) async {
    var documentReference = usersCollection.doc(userUid);
    var user = _userDataFromSnapshot(await documentReference.get());
    user.gradesList.add(chatUid);
    updateUserData(user);
  }

  // Future<List<>> getGradesOfUser(String userUid) async {
  //   var documentReference = usersCollection.doc(userUid);
  //   var user = _userDataFromSnapshot(await documentReference.get());
  //   var gradesString = user.gradesList;
  //   List<Grade> grades;
  //   for (final curGrade in gradesString) {
  //     GradeDatabaseService gradeDatabaseService = GradeDatabaseService();
  //   }
  //   return user.gradesList;
  // }

  String? userEmailFromUid(String uid) {
    AuthService authService = AuthService();
    String? email = authService.getCurrentUserEmail();
    return email;
  }

  Future PrintUsers() async {
    QuerySnapshot querySnapshot = await usersCollection.get();
    print(querySnapshot);
    print(_chatUsersDataFromSnapshot(querySnapshot));
  }

  List<ChatUserData> _chatUsersDataFromSnapshot(QuerySnapshot snapshot) =>
      snapshot.docs
          .map((doc) => ChatUserData(
                uid: doc.id,
                name: doc.get('name') ?? '',
                status: doc.get('status') ?? [],
                avatarUrl: doc.get('avatarUrl') ?? [],
                assignmentsList: doc.get('tasks') ?? [],
                gradesList: doc.get('grades'),
              ))
          .toList();

  ChatUserData _userDataFromSnapshot(DocumentSnapshot snapshot) => ChatUserData(
        uid: snapshot.id,
        name: snapshot['name'],
        avatarUrl: snapshot['avatarUrl'],
        status: snapshot['status'],
        groupId: snapshot['group_id'],
        gradesList: convertFromDynamic(snapshot['grades']),
        assignmentsList: convertFromDynamic(snapshot['tasks']),
      );

  List<String> convertFromDynamic(List<dynamic> list) {
    final stringsList = <String>[];
    for (final cur in list) {
      stringsList.add(cur.toString());
    }
    return stringsList;
  }

  // Future<bool> isUserStudent() async {
  //   final snapshot = await usersCollection.doc(uid).get();
  //   if (snapshot['status'] == 'student') {
  //     return true;
  //   }
  //   return false;
  // }

  // // Создание или обновление данных задания
  // Future updateAssinmentData(
  //   String title,
  //   String info,
  //   String deadline,
  //   String fileUrl,
  //   String tutorId,
  // ) async =>
  //     await assignmentCollection.doc().set({
  //       'title': title,
  //       'info': info,
  //       'deadline': deadline,
  //       'fileUrl': fileUrl,
  //       'tutorId': tutorId,
  //     });

  // List<Assingment> _assinmentsListFromSnapshot(QuerySnapshot snapshot) =>
  //     snapshot.docs
  //         .map(
  //           (doc) => Assingment(
  //             uid: doc.get('uid'),
  //             title: doc.get('title') ?? '',
  //             info: doc.get('info') ?? '',
  //             deadline: doc.get('deadline') ?? '',
  //             date: doc.get('date') ?? '',
  //             fileUrl: doc.get('fileUrl') ?? '',
  //             tutorId: doc.get('tutorId') ?? '',
  //           ),
  //         )
  //         .toList();

  // Assingment _assignmentFromSnapshot(DocumentSnapshot snapshot) => Assingment(
  //       uid: uid,
  //       title: snapshot['title'],
  //       info: snapshot['info'],
  //       deadline: snapshot['deadline'],
  //       date: snapshot['date'],
  //       fileUrl: snapshot['fileUrl'],
  //       tutorId: snapshot['tutorId'],
  //     );

  // // Создание или обновление данных оценок
  // Future updateGradesData(int value, String assignmentUid) async =>
  //     await gradesCollection.doc().set({
  //       'value': value,
  //       'assignment_uid': assignmentUid,
  //     });

  // List<Grade> _gradesListFromSnapshot(QuerySnapshot snapshot) => snapshot.docs
  //     .map(
  //       (doc) => Grade(
  //         uid: doc.get('uid'),
  //         value: doc.get('value') ?? 0,
  //         assignmentUid: doc.get('assignmentUid') ?? '',
  //       ),
  //     )
  //     .toList();

  // Grade _gradeFromSnapshot(DocumentSnapshot snapshot) => Grade(
  //       uid: uid,
  //       value: snapshot['value'],
  //       assignmentUid: snapshot['assignmentUid'],
  //     );

  // Stream<QuerySnapshot> get users => usersCollection.snapshots();
  // Stream<ChatUserData> get userData =>
  //     usersCollection.doc(uid).snapshots().map(_userDataFromSnapshot);

  // Stream<QuerySnapshot> get assignments => assignmentCollection.snapshots();
  // Stream<List<Assingment>> get assignmentsList =>
  //     assignmentCollection.snapshots().map(_assinmentsListFromSnapshot);

  // Stream<QuerySnapshot> get grades => gradesCollection.snapshots();
  // Stream<List<Grade>> get gradesList =>
  //     gradesCollection.snapshots().map(_gradesListFromSnapshot);
}
