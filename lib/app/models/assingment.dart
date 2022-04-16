import 'package:freezed_annotation/freezed_annotation.dart';

part 'assingment.freezed.dart';

@freezed
class Assingment with _$Assingment {
  factory Assingment({
    required final String uid,
    required String title,
    required String info,
    required DateTime? deadline,
    required DateTime date,
    required String? file_url,
    required String tutor_id,
  }) = _Assingment;
}
