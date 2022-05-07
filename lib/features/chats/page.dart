import 'dart:math' as math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/widgets/button.dart';
import '../../common/widgets/input_field.dart';
import '../../common/widgets/search_bar.dart';
import '../../services/database/chat.dart';
import '../auth/manager.dart';
import 'manager.dart';
import 'models/view_models/chat_item.dart';
import 'state_holder.dart';

class ChatsPage extends StatefulHookConsumerWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatsPageState();
}

class _ChatsPageState extends ConsumerState<ChatsPage> {
  late final _createChatController = TextEditingController();

  @override
  void initState() {
    ref
        .read(chatsManagerProvider)
        .getChats()
        .whenComplete(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final items = ref.watch(chatsStateProvider.notifier).chatItems;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Чаты',
          style: theme.textTheme.headline2,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _showCreateChatDialog,
            icon: const Icon(Icons.add),
            color: theme.primaryColor,
            splashRadius: 16.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const HSearchBar(),
            ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => ChatsRow(
                chatsItem: items[index],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showCreateChatDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Название чата'),
          content: HInputField(
            type: InputType.name,
            controller: _createChatController,
          ),
          actions: [
            HButton(
              text: 'Готово',
              onTap: () => _onCreateChatTapped(
                _createChatController.text,
              ),
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      );

  void _onCreateChatTapped(String? text) {
    ref.read(chatsManagerProvider)
      ..createChat(text ?? 'Чат')
      ..getChats().whenComplete(() => setState(() {}));

    Navigator.of(context).pop();
  }
}

class ChatsRow extends StatelessWidget {
  final ChatItemViewModel chatsItem;

  late final avatarColor =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  ChatsRow({
    Key? key,
    required this.chatsItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageURL = chatsItem.imageURL;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => _ChatPage('0vjtVTnrwnTC9oFJE4sd')));
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 10,
          bottom: 10,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: avatarColor,
                    backgroundImage: imageURL == null
                        ? const NetworkImage(
                            'https://www.woolha.com/media/2020/03/eevee.png',
                          )
                        : NetworkImage(imageURL),
                    maxRadius: 30,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            chatsItem.name,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            chatsItem.messageText ?? 'Напишите первым!',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              chatsItem.time ?? '',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatPage extends ConsumerWidget {
  final String uid;
  const _ChatPage(this.uid, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        body: Column(
          children: [
            Flexible(
              child: StreamBuilder<QuerySnapshot>(
                stream: ref.read(chatDatabaseServiceProvider).getMessages(uid),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData) {
                    final listMessages = snapshot.data!.docs;
                    if (listMessages.isNotEmpty) {
                      return ListView.builder(
                          padding: const EdgeInsets.all(10),
                          itemCount: snapshot.data?.docs.length,
                          reverse: true,
                          itemBuilder: (context, index) {
                            final message = ref
                                .read(chatDatabaseServiceProvider)
                                .messageFromSnapshotData(
                                  snapshot.data?.docs[index].data()
                                      as Map<String, dynamic>,
                                  snapshot.data?.docs[index].id,
                                );
                            print(message);
                            return SizedBox(
                              height: 64,
                              child: Text(message.message),
                            );
                          });
                    } else {
                      return const Center(
                        child: Text('No messages...'),
                      );
                    }
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.amber,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      );
}
