import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/models/message.dart';
import 'state_holder.dart';

late final activeChatManagerProvider = Provider(
  (ref) => ActiveChatManager(
    ref.watch(activeChatStateProvider.notifier),
  ),
);

class ActiveChatManager {
  final ActiveChatStateHolder _activeChatState;

  ActiveChatManager(
    this._activeChatState,
  );

  Future writeMessage({required String message}) async {}

  Future getMessages() async {
    _activeChatState.setData([
      Message(
        uid: 'uid',
        chatUid: 'chatUid',
        userUid: 'userUid',
        message: 'message',
        time: DateTime.now(),
      ),
      Message(
        uid: 'uid',
        chatUid: 'chatUid',
        userUid: 'userUid',
        message: 'message',
        time: DateTime.now(),
      ),
    ]);
  }
}
