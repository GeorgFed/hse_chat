import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'view_model.dart';

class ActiveChat extends StatefulWidget {
  final ActiveChatViewModel viewModel;

  const ActiveChat(this.viewModel, {Key? key}) : super(key: key);

  @override
  State<ActiveChat> createState() => _ActiveChatState();
}

class _ActiveChatState extends State<ActiveChat> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.getMessages();
  }

  @override
  Widget build(BuildContext context) {
    final messages = widget.viewModel.messages
        .map(
          (message) => types.TextMessage(
            author: types.User(
              id: message.userUid,
              firstName: message.userUid,
              lastName: message.uid,
            ),
            createdAt: message.time.millisecondsSinceEpoch,
            id: message.uid,
            text: message.message,
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
        user: types.User(
          id: messages.first.id,
          firstName: messages.first.author.firstName,
          lastName: messages.first.author.lastName,
        ),
      ),
    );
  }
}
