import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../app/models/chat.dart';
import '../../app/models/message.dart';
import '../auth.dart';
import '../database.dart';

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
  ) async {
    await chatCollection.doc().set({
      'title': title,
      'usersId': usersId,
      'messagesId': [],
    });
  }

  Future updateChatData(String uid, Chat chat) async =>
      await chatCollection.doc(uid).set({
        'title': chat.title,
        'usersId': chat.usersId,
        'messagesId': chat.messagesId,
      });

  Future addMessageToChat(String uid, String message) async {
    final documentReference = chatCollection.doc(uid);
    final chat = chatFromSnapshot(await documentReference.get());
    const uuid = Uuid();
    final newId = uuid.v1();
    final authService = AuthService();
    createMessageData(
      uid,
      message,
      authService.getCurrentUserUid(),
      DateTime.now(),
      newId,
    );
    chat.messagesId.add(newId);
    updateChatData(uid, chat);
  }

  Future addUserToChat(String chatUid, String userUid) async {
    var documentReference = chatCollection.doc(chatUid);
    var chat = chatFromSnapshot(await documentReference.get());
    chat.usersId.add(userUid);
    updateChatData(chatUid, chat);
    var dataBaseService = DataBaseService();
    dataBaseService.addChatToUser(chatUid, userUid);
  }

  Future<List<Chat>> getAllChats() async {
    var querySnapshot = await chatCollection.get();
    return _chatsListFromSnapshot(querySnapshot);
  }

  Future<List<Chat>> getUsersChats() async {
    var querySnapshot = await chatCollection
        .where('usersId', arrayContains: AuthService().getCurrentUserUid())
        .get();
    var chats = _chatsListFromSnapshot(querySnapshot);
    return chats;
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

  Chat chatFromSnapshotData(Map<String, dynamic> snapshot, String? id) => Chat(
        uid: id ?? '',
        title: snapshot['title'],
        usersId: convertFromDynamic(snapshot['usersId']),
        messagesId: convertFromDynamic(snapshot['messagesId']),
      );

  Message messageFromSnapshotData(Map<String, dynamic> snapshot, String? id) =>
      Message(
        uid: id ?? '',
        chatUid: snapshot['chatUid'],
        userUid: snapshot['userUid'],
        message: snapshot['text'],
        time: convertDateTimeFromString(snapshot['time']),
      );

  Chat chatFromSnapshot(DocumentSnapshot snapshot) => Chat(
        uid: snapshot.id,
        title: snapshot['title'],
        usersId: convertFromDynamic(snapshot['usersId']),
        messagesId: convertFromDynamic(snapshot['messagesId']),
      );

  // Future selectFile() async {
  //   final result = await FilePicker.platform.pickFiles(allowMultiple: false);
  //   if (result == null) {
  //     return;
  //   }
  //   final fileName = result.paths;
  //   final destination = 'files/$fileName';
  // }

  Future createMessageData(
    String chatUid,
    String text,
    String? userUid,
    DateTime time,
    String messageUid,
  ) async =>
      await messagesCollection.doc(messageUid).set(
        {
          'chatUid': chatUid,
          'text': text,
          'userUid': userUid,
          'time': DateFormat('yyyy-MM-dd – kk:mm').format(time),
        },
      );

  Future<List<Message>> getMessagesOfChat(String chatUid) async {
    var querySnapshot =
        await messagesCollection.where('chatUid', isEqualTo: chatUid).get();
    var messages = _messagesListFromSnapshot(querySnapshot);
    return messages;
  }

  List<Message> _messagesListFromSnapshot(QuerySnapshot snapshot) =>
      snapshot.docs
          .map(
            (doc) => Message(
              uid: doc.id,
              chatUid: doc.get('chatUid') ?? '',
              userUid: doc.get('userUid') ?? [],
              message: doc.get('text') ?? [],
              time: convertDateTimeFromString(doc.get('time')),
            ),
          )
          .toList();
  List<String> convertFromDynamic(List<dynamic> list) {
    final stringsList = <String>[];
    for (final cur in list) {
      stringsList.add(cur.toString());
    }
    return stringsList;
  }

  DateTime convertDateTimeFromString(String dateInString) {
    var date = DateFormat('yyyy-MM-dd – kk:mm').parse(dateInString);
    return date;
  }

  Stream<QuerySnapshot> getChats(String userUid) => chatCollection
      .where('usersId', arrayContains: AuthService().getCurrentUserUid())
      .snapshots();

  Stream<QuerySnapshot> getMessages(String chatUid) => messagesCollection
      .where(
        'chatUid',
        isEqualTo: chatUid,
      )
      .orderBy('time', descending: true)
      .snapshots();
}
