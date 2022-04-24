import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user.freezed.dart';

@freezed
class ChatUser with _$ChatUser {
  factory ChatUser({
    required String uid,
  }) = _ChatUser;
}
