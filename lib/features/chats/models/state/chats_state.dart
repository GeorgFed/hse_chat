import 'package:freezed_annotation/freezed_annotation.dart';

import '../view_model/chat_item.dart';

part 'chats_state.freezed.dart';

@freezed
class ChatsState with _$ChatsState {
  factory ChatsState({
    @Default(false) bool isLoading,
    @Default([]) List<ChatItemViewModel> chatItems,
  }) = _ChatsState;
}
