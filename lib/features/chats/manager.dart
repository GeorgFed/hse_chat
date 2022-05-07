import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/auth.dart';
import '../../services/database/chat.dart';
import 'models/view_model/chat_item.dart';
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

  Future<void> getChats() async => _chatsState
    ..setLoading(value: true)
    ..setData(
      (await _chatDatabaseService.getAllChats())
          .map(
            (chat) => ChatItemViewModel(
              uid: chat.uid,
              name: chat.title,
            ),
          )
          .toList(),
    )
    ..setLoading(value: false);

  Future createChat(String title) => _chatDatabaseService
      .createChatData(title, [_authService.getCurrentUserUid()]);
}
