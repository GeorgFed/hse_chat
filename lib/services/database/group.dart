import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod/riverpod.dart';

import '../../app/models/group.dart';

class GroupDatabaseService {
  final CollectionReference groupsCollection =
      FirebaseFirestore.instance.collection('groups');

  Future printGroup() async {
    QuerySnapshot snapshot = await groupsCollection.get();
    List<Group> groups = _groupsListFromSnapshot(snapshot);
    print(groups);
    // for (var doc in snapshot.docs) {
    //   //print(doc.data());
    // }
    // final _docData = snapshot.docs.map((doc) => doc.data()).toList();
    // print(_docData);
  }

  // Создание или обновление данных групп
  Future updateGroupsData(String name, List<String> studentsUid) async =>
      await groupsCollection.doc().set({
        'name': name,
        'studentsUid': studentsUid,
      });

  List<String> convertFromDynamic(List<dynamic> list) {
    List<String> stringsList = [];
    for (var cur in list) {
      stringsList.add(cur.toString());
    }
    return stringsList;
  }

  List<Group> _groupsListFromSnapshot(QuerySnapshot snapshot) {
    print(snapshot.docs);
    for (var doc in snapshot.docs) {
      List<dynamic> studs = doc.get('studentsUid');
      print(studs);
    }

    return snapshot.docs
        .map((doc) => Group(
              uid: doc.id,
              name: doc.get('name') ?? '',
              studentsIds: convertFromDynamic(doc.get('studentsUid')) ?? [],
            ))
        .toList();
  }

  Group _groupsFromSnapshot(DocumentSnapshot snapshot) => Group(
        uid: snapshot.id,
        name: snapshot['name'],
        studentsIds: snapshot['studentsIds'],
      );

  Stream<QuerySnapshot> get groups => groupsCollection.snapshots();
  Stream<List<Group>> get groupsList =>
      groupsCollection.snapshots().map(_groupsListFromSnapshot);
}
