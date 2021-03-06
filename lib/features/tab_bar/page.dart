import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../chats/page.dart';
import 'state_holder.dart';

class HTabBar extends ConsumerWidget {
  const HTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateHolder = ref.watch(tabBarStateProvider.notifier);
    final selectedTab = ref.watch(tabBarStateProvider).selectedTab;
    return Scaffold(
      body: _TabBarPage(tab: selectedTab),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: '0',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: '1',
          ),
        ],
        currentIndex: selectedTab,
        onTap: stateHolder.setTab,
      ),
    );
  }
}

class _TabBarPage extends StatelessWidget {
  final int tab;

  const _TabBarPage({
    Key? key,
    required this.tab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (tab) {
      case 0:
        return const ChatsPage();
      default:
        return Center(
          child: Text('$tab'),
        );
    }
  }
}
