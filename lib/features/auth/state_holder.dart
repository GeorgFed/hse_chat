import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/state.dart';
import 'status.dart';

final authPageStateProvider =
    StateNotifierProvider<AuthPageStateHolder, AuthPageState>(
  (ref) => AuthPageStateHolder(),
);

class AuthPageStateHolder extends StateNotifier<AuthPageState> {
  AuthPageStateHolder() : super(AuthPageState());

  void setStatus(AuthPageStatus status) =>
      state = state.copyWith(status: status);
}
