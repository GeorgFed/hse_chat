import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  factory Message({
    required String uid,
    required String chatUid,
    required String userUid,
    required String message,
    required DateTime time,
  }) = _Message;
}
