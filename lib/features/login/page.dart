import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/style/assets.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/input_field.dart';
import '../auth/state_holder.dart';
import '../auth/status.dart';
import '../tab_bar/page.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  late final _emailController = TextEditingController();
  late final _passwordController = TextEditingController();

  bool shouldValidate = false;

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    HInputField(
                      controller: _emailController,
                      placeholder: 'Почта',
                      type: InputType.email,
                      onChanged: (text) => setState(() => email = text),
                      shouldValidate: shouldValidate,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    HInputField(
                      controller: _passwordController,
                      placeholder: 'Пароль',
                      type: InputType.password,
                      onChanged: (text) => setState(() => password = text),
                      shouldValidate: shouldValidate,
                    ),
                  ],
                ),
              ),
              HButton(
                text: 'Войти',
                onTap: _onSubmit(),
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

  VoidCallback? _onSubmit() {
    setState(() => shouldValidate = true);

    final currentFormState = _formKey.currentState;
    final isValid =
        currentFormState == null ? false : currentFormState.validate();

    // validate all the form fields
    if (email.isNotEmpty && password.isNotEmpty) {
      if (isValid) {
        return () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabBarPage(),
              ),
            );
      } else {
        return () {};
      }
    } else {
      return null;
    }
  }
}