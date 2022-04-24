import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_user.dart';

part 'state.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    ChatUser? chatUser,
  }) = _AppState;
}
