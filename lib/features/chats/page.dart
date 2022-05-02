import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/widgets/search_bar.dart';
import '../../services/auth.dart';
import 'manager.dart';
import 'models/view_models/chat_item.dart';
import 'state_holder.dart';

class ChatsPage extends StatefulHookConsumerWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatsPageState();
}

class _ChatsPageState extends ConsumerState<ChatsPage> {
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Чаты',
                          style: theme.textTheme.headline1?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                            top: 2,
                            bottom: 2,
                          ),
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: theme.primaryColor.withAlpha(50),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: theme.primaryColor,
                                size: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
            ),
          ],
        ),
      ),
    );
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
                            'https://via.placeholder.com/150',
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
                            chatsItem.messageText,
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
              chatsItem.time,
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
