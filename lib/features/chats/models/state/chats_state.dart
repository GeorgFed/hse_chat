import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_item.dart';

part 'chats_state.freezed.dart';

@freezed
class ChatsState with _$ChatsState {
  factory ChatsState({
    @Default('') String userId,
    @Default(false) bool isLoading,
    @Default([]) List<ChatItemViewModel> chatItems,
  }) = _ChatsState;
}
