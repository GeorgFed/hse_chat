import 'package:cloud_firestore/cloud_firestore.dart';

import '../../app/models/chat.dart';

class ChatDatabaseService {
  String uid;
  ChatDatabaseService({required this.uid});

  final CollectionReference chatCollection =
      FirebaseFirestore.instance.collection('chats');
  final CollectionReference messagesCollection =
      FirebaseFirestore.instance.collection('messages');

  // Создание или обновление данных пользователя
  Future createChatData(
    String title,
    List<String> usersId,
    List<String> messagesId,
  ) async =>
      await chatCollection.doc().set({
        'title': title,
        'usersId': usersId,
        'messagesId': messagesId,
      });

  Future<List<Chat>> getAllChats() async {
    QuerySnapshot querySnapshot = await chatCollection.get();
    print(querySnapshot);
    return _chatsListFromSnapshot(querySnapshot);
  }

  List<Chat> _chatsListFromSnapshot(QuerySnapshot snapshot) => snapshot.docs
      .map(
        (doc) => Chat(
          uid: doc.get('uid'),
          title: doc.get('title') ?? '',
          usersId: doc.get('usersId') ?? [],
          messagesId: doc.get('messagesId') ?? [],
        ),
      )
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
    String chatUid,
    String text,
    String userUid,
    DateTime time,
  ) async =>
      await messagesCollection.doc().set(
        {
          'chatUid': chatUid,
          'text': text,
          'userUid': userUid,
          'time': time,
        },
      );
}
