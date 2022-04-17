import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state_holder.dart';

class TabBarPage extends ConsumerWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateHolder = ref.watch(tabBarStateProvider.notifier);
    final selectedTab = ref.watch(tabBarStateProvider).selectedTab;
    return Scaffold(
      body: Center(
        child: Text('$selectedTab'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined),
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
