import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../app/models/message.dart';

part 'state.freezed.dart';

@freezed
class ActiveChatState with _$ActiveChatState {
  factory ActiveChatState({
    @Default(false) bool isLoading,
    @Default([]) List<Message> messages,
  }) = _ActiveChatState;
}
