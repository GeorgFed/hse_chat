import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/chat_user.dart';
import 'models/state.dart';

late final appStateProvider = StateNotifierProvider<AppStateHolder, AppState>(
  (ref) => AppStateHolder(),
);

class AppStateHolder extends StateNotifier<AppState> {
  AppStateHolder()
      : super(
          AppState(),
        );
  Future<void> setUser(ChatUser? chatUser) async {
    state = AppState(chatUser: chatUser);
  }

  ChatUser? get chatUser => state.chatUser;
}
