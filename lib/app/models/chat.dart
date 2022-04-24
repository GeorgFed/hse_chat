import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
class Chat with _$Chat {
  factory Chat({
    required String uid,
    required String title,
    @Default([]) List<String> usersId,
    @Default([]) List<String> messagesId,
  }) = _ChatUser;
}
