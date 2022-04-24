import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user_data.freezed.dart';

@freezed
class ChatUserData with _$ChatUserData {
  factory ChatUserData({
    required final String uid,
    required String name,
    required String status,
    @Default('') String avatarUrl,
    String? groupId,
  }) = _ChatUserData;
}
