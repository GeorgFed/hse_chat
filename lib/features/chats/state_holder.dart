import 'package:riverpod/riverpod.dart';

import 'models/state/chats_state.dart';
import 'models/view_model/chat_item.dart';

late final chatsStateProvider = StateNotifierProvider(
  (ref) => ChatsStateHolder(),
);

class ChatsStateHolder extends StateNotifier<ChatsState> {
  ChatsStateHolder()
      : super(
          ChatsState(),
        );

  void setData(List<ChatItemViewModel> chatItems) =>
      state = state.copyWith(chatItems: chatItems);

  List<ChatItemViewModel> get chatItems => state.chatItems;
}
