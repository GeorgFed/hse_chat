import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../services/auth.dart';
import '../../services/database/chat.dart';
import 'models/state/chat_item.dart';
import 'models/state/chats_state.dart';

@injectable
class ChatsViewModel extends ChangeNotifier {
  final AuthService _authService;
  final ChatDatabaseService _chatDatabaseService;

  ChatsState _state = ChatsState();

  List<ChatItemViewModel> get items => _state.chatItems;

  bool get isLoading => _state.isLoading;

  String get userId => _state.userId;

  ChatsViewModel(
    this._authService,
    this._chatDatabaseService,
  );

  Future<void> getChats() async {
    _state = _state.copyWith(isLoading: true);
    final chats = await _chatDatabaseService.getUsersChats();
    final result = <ChatItemViewModel>[];
    for (final chat in chats) {
      final messages = await _chatDatabaseService.getMessagesOfChat(chat.uid);
      final lastMessage =
          messages.isNotEmpty ? messages.last.message : 'Напишите первым!';
      final viewModel = ChatItemViewModel(
        uid: chat.uid,
        name: chat.title,
        messageText: lastMessage,
      );
      result.add(viewModel);
    }
    _state = _state.copyWith(chatItems: result, isLoading: false);
    notifyListeners();
  }

  Future createChat(String title) => _chatDatabaseService
      .createChatData(title, [_authService.getCurrentUserUid()]);

  Future<void> getCurrentUserId() async {
    final uid = _authService.getCurrentUserUid();
    _state = _state.copyWith(userId: uid ?? '');
  }
}
