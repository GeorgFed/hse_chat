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

  void setLoading({required bool value}) =>
      state = state.copyWith(isLoading: value);

  List<ChatItemViewModel> get chatItems => state.chatItems;

  bool get isLoading => state.isLoading;
}
