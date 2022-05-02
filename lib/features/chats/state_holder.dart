import 'package:riverpod/riverpod.dart';

import 'models/states/chats_state.dart';

class ChatsStateHolder extends StateNotifier<ChatsState> {
  ChatsStateHolder()
      : super(
          ChatsState(),
        );
}
