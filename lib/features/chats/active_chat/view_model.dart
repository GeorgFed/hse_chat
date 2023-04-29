import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../app/models/message.dart';
import '../../../services/database/chat.dart';
import 'models/state.dart';

@injectable
class ActiveChatViewModel extends ChangeNotifier {
  final ChatDatabaseService chatDatabaseService;

  ActiveChatState _state = ActiveChatState();

  bool get isLoading => _state.isLoading;

  List<Message> get messages => _state.messages;

  ActiveChatViewModel(this.chatDatabaseService);

  Future<void> getMessages() async {
    final uid = await getUid();
    final messages = await chatDatabaseService.getMessagesOfChat(uid);
    _state = _state.copyWith(messages: messages);
    notifyListeners();
  }

  Future<void> writeMessage(
    String message,
  ) async {
    final uid = await getUid();
    await chatDatabaseService.addMessageToChat(uid, message);
    getMessages();
  }

  Future<String> getUid() async {
    final chats = await chatDatabaseService.getUsersChats();
    return chats.first.uid;
  }
}
