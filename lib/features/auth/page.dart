import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../login/page.dart';
import '../sign_up/page.dart';
import 'state_holder.dart';
import 'status.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(authPageStateProvider).status;
    return status == AuthPageStatus.login
        ? const LoginPage()
        : const SignUpPage();
  }
}
