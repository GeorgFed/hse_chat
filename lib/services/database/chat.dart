import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../app/models/chat.dart';
import '../auth.dart';

late final chatDatabaseServiceProvider =
    Provider((ref) => ChatDatabaseService());

class ChatDatabaseService {
  final CollectionReference chatCollection =
      FirebaseFirestore.instance.collection('chats');
  final CollectionReference messagesCollection =
      FirebaseFirestore.instance.collection('messages');

  // Создание или обновление данных пользователя
  Future createChatData(
    String title,
    List<String?> usersId,
  ) async =>
      await chatCollection.doc().set({
        'title': title,
        'usersId': usersId,
        'messagesId': [],
      });

  Future updateChatData(String uid, Chat chat) async =>
      await chatCollection.doc(uid).set({
        'title': chat.title,
        'usersId': chat.usersId,
        'messagesId': chat.messagesId,
      });

  Future addMessageToChat(String uid) async {
    DocumentReference documentReference = chatCollection.doc(uid);
    Chat chat = _chatFromSnapshot(await documentReference.get());
    var uuid = Uuid();
    String new_id = uuid.v1();
    AuthService authService = AuthService();
    createMessageData(
        new_id, "Hello", authService.getCurrentUserUid(), DateTime.now());
    chat.messagesId.add(new_id);
    updateChatData(uid, chat);
  }

  Future<List<Chat>> getAllChats() async {
    QuerySnapshot querySnapshot = await chatCollection.get();
    print(querySnapshot);
    return _chatsListFromSnapshot(querySnapshot);
  }

  List<Chat> _chatsListFromSnapshot(QuerySnapshot snapshot) => snapshot.docs
      .map(
        (doc) => Chat(
          uid: doc.id,
          title: doc.get('title') ?? '',
          usersId: doc.get('usersId') ?? [],
          messagesId: doc.get('messagesId') ?? [],
        ),
      )
      .toList();

  Chat _chatFromSnapshot(DocumentSnapshot snapshot) => Chat(
        uid: snapshot.id,
        title: snapshot['title'],
        usersId: convertFromDynamic(snapshot['usersId']),
        messagesId: convertFromDynamic(snapshot['messagesId']),
      );

  Future createMessageData(
    String chatUid,
    String text,
    String? userUid,
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

  List<String> convertFromDynamic(List<dynamic> list) {
    final stringsList = <String>[];
    for (final cur in list) {
      stringsList.add(cur.toString());
    }
    return stringsList;
  }
}
