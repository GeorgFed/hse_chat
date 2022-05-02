import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/widgets/button.dart';
import '../../common/widgets/input_field.dart';
import '../../common/widgets/search_bar.dart';
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
    ref.read(chatsManagerProvider).onInit();
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
    // TODO: create chat
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
      onTap: () {},
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
