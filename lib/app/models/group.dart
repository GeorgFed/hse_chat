import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';

@freezed
class Group with _$Group {
  factory Group({
    required final String uid,
    required String name,
    required List<String> studentsIds,
  }) = _Group;
}
