import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/style/assets.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/input_field.dart';
import '../auth/state_holder.dart';
import '../auth/status.dart';
import '../tab_bar/page.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateHolder = ref.watch(authPageStateProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AppAssets.logo),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          heightFactor: 2.0,
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              Text(
                'Вход',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Colors.black),
                textAlign: TextAlign.start,
              ),
              const HInputField(
                placeholder: 'Почта',
                type: InputType.email,
              ),
              const HInputField(
                placeholder: 'Пароль',
                type: InputType.password,
              ),
              HButton(
                text: 'Войти',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TabBarPage(),
                  ),
                ),
              ),
              HButton(
                text: 'Нет аккаунта? Регистрация',
                type: ButtonType.transparent,
                onTap: () => stateHolder.setStatus(AuthPageStatus.signUp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
