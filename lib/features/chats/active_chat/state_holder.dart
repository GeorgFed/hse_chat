import 'package:riverpod/riverpod.dart';
import '../../../app/models/message.dart';

import 'models/state.dart';

late final activeChatStateProvider = StateNotifierProvider(
  (ref) => ActiveChatStateHolder(),
);

class ActiveChatStateHolder extends StateNotifier<ActiveChatState> {
  ActiveChatStateHolder()
      : super(
          ActiveChatState(),
        );

  void setData(List<Message> messages) =>
      state = state.copyWith(messages: messages);

  void setLoading({required bool value}) =>
      state = state.copyWith(isLoading: value);

  List<Message> get messages => state.messages;
}
