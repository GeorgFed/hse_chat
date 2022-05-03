import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../app/models/chat.dart';
import '../../app/models/message.dart';
import '../auth.dart';

late final chatDatabaseServiceProvider = Provider(
  (ref) => ChatDatabaseService(
    ref.watch(authServiceProvider),
  ),
);

class ChatDatabaseService {
  final AuthService _authService;

  final CollectionReference chatCollection =
      FirebaseFirestore.instance.collection('chats');
  final CollectionReference messagesCollection =
      FirebaseFirestore.instance.collection('messages');

  ChatDatabaseService(this._authService);

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

  Future addMessageToChat(
    String uid,
    String message,
  ) async {
    final documentReference = chatCollection.doc(uid);
    final chat = _chatFromSnapshot(await documentReference.get());
    const uuid = Uuid();
    final newUid = uuid.v1();
    createMessageData(
      newUid,
      message,
      _authService.getCurrentUserUid(),
      DateTime.now(),
    );
    chat.messagesId.add(newUid);
    updateChatData(uid, chat);
  }

  Future<List<Chat>> getAllChats() async {
    final querySnapshot = await chatCollection.get();
    return _chatsListFromSnapshot(querySnapshot);
  }

  List<Chat> _chatsListFromSnapshot(QuerySnapshot snapshot) => snapshot.docs
      .map(
        (doc) => Chat(
          uid: doc.id,
          title: doc.get('title') ?? '',
          usersId: convertFromDynamic(doc.get('usersId')),
          messagesId: convertFromDynamic(doc.get('messagesId')),
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
      await messagesCollection.doc(chatUid).set(
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
