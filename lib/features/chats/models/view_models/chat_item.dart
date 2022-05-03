import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_item.freezed.dart';

@freezed
class ChatItemViewModel with _$ChatItemViewModel {
  factory ChatItemViewModel({
    required String name,
    String? messageText,
    String? time,
    String? imageURL,
  }) = _ChatItemViewModel;
}
