import 'package:riverpod/riverpod.dart';

import 'models/state.dart';

final tabBarStateProvider =
    StateNotifierProvider<TabBarStateHolder, TabBarState>(
  (ref) => TabBarStateHolder(),
);

class TabBarStateHolder extends StateNotifier<TabBarState> {
  TabBarStateHolder() : super(const TabBarState());

  void setTab(int index) => state = state.copyWith(selectedTab: index);
}
