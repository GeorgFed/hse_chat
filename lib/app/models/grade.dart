import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade.freezed.dart';

@freezed
class Grade with _$Grade {
  factory Grade({
    required String uid,
    required String value,
    required String assignment_uid,
  }) = _Grade;
}
