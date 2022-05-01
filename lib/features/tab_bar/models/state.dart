import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class TabBarState with _$TabBarState {
  const factory TabBarState({
    @Default(0) int selectedTab,
  }) = _TabBarState;
}
