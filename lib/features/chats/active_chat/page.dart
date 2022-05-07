import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'manager.dart';
import 'state_holder.dart';

class ActiveChat extends StatefulHookConsumerWidget {
  const ActiveChat({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ActiveChatState();
}

class _ActiveChatState extends ConsumerState<ActiveChat> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(activeChatManagerProvider).getMessages();
  }

  @override
  Widget build(BuildContext context) {
    final messages = ref
        .watch(activeChatStateProvider.notifier)
        .messages
        .map(
          (e) => types.TextMessage(
            author: types.User(
              id: e.userUid,
              firstName: 'Egor',
              lastName: 'Fed',
            ),
            createdAt: DateTime.now().millisecondsSinceEpoch,
            id: 'dsafdaf',
            text: e.message,
          ),
        )
        .toList();
    return Scaffold(
      body: Chat(
        messages: messages,
        onAttachmentPressed: () {},
        onMessageTap: (context, message) {},
        onPreviewDataFetched: (message, preview) {},
        onSendPressed: (text) {},
        user: const types.User(
          id: 'sfdfasf',
          firstName: 'Egor',
          lastName: 'Fed',
        ),
      ),
    );
  }
}
