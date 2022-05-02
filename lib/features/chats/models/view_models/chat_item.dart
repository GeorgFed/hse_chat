import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_item.freezed.dart';

@freezed
class ChatItemViewModel with _$ChatItemViewModel {
  factory ChatItemViewModel({
    required String name,
    required String messageText,
    required String time,
    String? imageURL,
  }) = _ChatItemViewModel;
}
