import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod/riverpod.dart';

import '../../app/models/chat.dart';
import '../../app/models/chat_user.dart';
import '../../app/models/chat_user_data.dart';
import '../../app/models/assingment.dart';
import '../../app/models/grade.dart';
import '../../app/models/group.dart';

class ChatDatabaseService {
  String uid;
  ChatDatabaseService({required this.uid});

  final CollectionReference chatCollection =
      FirebaseFirestore.instance.collection('chats');
  final CollectionReference messagesCollection =
      FirebaseFirestore.instance.collection('messages');

  // Создание или обновление данных пользователя
  Future createChatData(
          String title, List<String> usersId, List<String> messagesId) async =>
      await chatCollection.doc().set({
        'title': title,
        'usersId': usersId,
        'messagesId': messagesId,
      });

  List<Chat> _chatsListFromSnapshot(QuerySnapshot snapshot) => snapshot.docs
      .map((doc) => Chat(
            uid: doc.get('uid'),
            title: doc.get('title') ?? '',
            usersId: doc.get('usersId') ?? [],
            messagesId: doc.get('messagesId') ?? [],
          ))
      .toList();

  Chat _chatFromSnapshot(DocumentSnapshot snapshot) => Chat(
        uid: uid,
        title: snapshot['title'],
        usersId: snapshot['usersId'],
        messagesId: snapshot['messagesId'],
      );

  Stream<QuerySnapshot> get chats => chatCollection.snapshots();
  Stream<List<Chat>> get chatList =>
      chatCollection.snapshots().map(_chatsListFromSnapshot);

  Future createMessageData(
          String chatUid, String text, String userUid, DateTime time) async =>
      await messagesCollection.doc().set(
          {'chatUid': chatUid, 'text': text, 'userUid': userUid, 'time': time});
}
