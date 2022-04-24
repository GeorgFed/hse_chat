import 'package:freezed_annotation/freezed_annotation.dart';

part 'assingment.freezed.dart';

@freezed
class Assingment with _$Assingment {
  factory Assingment({
    required final String uid,
    required String title,
    required String info,
    required DateTime date,
    required String tutorId,
    String? fileUrl,
    DateTime? deadline,
  }) = _Assingment;
}
