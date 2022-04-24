import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/style/assets.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/input_field.dart';
import '../chats/page.dart';
import '../login/page.dart';
import '../sign_up/page.dart';
import '../tab_bar/page.dart';
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
