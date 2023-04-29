import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../app/models/group.dart';

@lazySingleton
class GroupDatabaseService {
  final CollectionReference groupsCollection =
      FirebaseFirestore.instance.collection('groups');

  Future printGroup() async {
    final snapshot = await groupsCollection.get();
    final groups = _groupsListFromSnapshot(snapshot);

    print(groups);
    // for (var doc in snapshot.docs) {
    //   //print(doc.data());
    // }
    // final _docData = snapshot.docs.map((doc) => doc.data()).toList();
    // print(_docData);
  }

  Future createGroupData(String name, List<String> studentsUid) async {
    await groupsCollection.doc().set({
      'name': name,
      'studentsUid': studentsUid,
    });
  }

  // Создание или обновление данных групп
  Future updateGroupsData(String uid, Group curGroup) async {
    await groupsCollection.doc(uid).set({
      'name': curGroup.name,
      'studentsUid': curGroup.studentsIds,
    });
  }

  Future addStudentToGroup(String groupUId, String userUid) async {
    var documentReference = groupsCollection.doc(groupUId);
    var curGroup = _groupFromSnapshot(await documentReference.get());
    curGroup.studentsIds.add(userUid);
    updateGroupsData(groupUId, curGroup);
  }

  List<String> convertFromDynamic(List<dynamic> list) {
    final stringsList = <String>[];
    for (final cur in list) {
      stringsList.add(cur.toString());
    }
    return stringsList;
  }

  List<Group> _groupsListFromSnapshot(QuerySnapshot snapshot) {
    print(snapshot.docs);

    for (final doc in snapshot.docs) {
      final studs = doc.get('studentsUid');

      print(studs);
    }

    return snapshot.docs
        .map(
          (doc) => Group(
            uid: doc.id,
            name: doc.get('name') ?? '',
            studentsIds: convertFromDynamic(doc.get('studentsUid')),
          ),
        )
        .toList();
  }

  Group _groupFromSnapshot(DocumentSnapshot snapshot) => Group(
        uid: snapshot.id,
        name: snapshot['name'],
        studentsIds: snapshot['studentsIds'],
      );
}
