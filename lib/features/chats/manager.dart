import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/view_models/chat_item.dart';
import 'state_holder.dart';

late final chatsManagerProvider = Provider(
  (ref) => ChatsManager(
    ref.watch(chatsStateProvider.notifier),
  ),
);

class ChatsManager {
  final ChatsStateHolder _chatsState;

  ChatsManager(
    this._chatsState,
  );

  void onInit() => _chatsState.setData(
        [
          ChatItemViewModel(
            name: 'Хуй',
            messageText: 'Хуй Хуй Хуй Хуй Хуй',
            time: 'Сегодня',
          ),
          ChatItemViewModel(
            name: 'Хуй',
            messageText: 'Хуй Хуй Хуй Хуй Хуй',
            time: 'Сегодня',
          ),
          ChatItemViewModel(
            name: 'Хуй',
            messageText: 'Хуй Хуй Хуй Хуй Хуй',
            time: 'Сегодня',
          ),
        ],
      );
}
