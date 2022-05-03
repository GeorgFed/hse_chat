import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/auth.dart';
import '../../services/database/chat.dart';
import 'models/view_models/chat_item.dart';
import 'state_holder.dart';

late final chatsManagerProvider = Provider(
  (ref) => ChatsManager(
    ref.watch(chatsStateProvider.notifier),
    ref.watch(chatDatabaseServiceProvider),
    ref.watch(authServiceProvider),
  ),
);

class ChatsManager {
  final ChatsStateHolder _chatsState;
  final AuthService _authService;
  final ChatDatabaseService _chatDatabaseService;

  ChatsManager(
    this._chatsState,
    this._chatDatabaseService,
    this._authService,
  );

  Future<void> getChats() async => _chatsState.setData(
        (await _chatDatabaseService.getAllChats())
            .map(
              (chat) => ChatItemViewModel(name: chat.title),
            )
            .toList(),
      );

  Future createChat(String title) => _chatDatabaseService
      .createChatData(title, [_authService.getCurrentUserUid()]);
}
