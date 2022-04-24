import 'package:freezed_annotation/freezed_annotation.dart';

import '../status.dart';

part 'state.freezed.dart';

@freezed
class AuthPageState with _$AuthPageState {
  factory AuthPageState({
    @Default(AuthPageStatus.login) AuthPageStatus status,
  }) = _AuthPageState;
}
