import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/style/assets.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/input_field.dart';
import '../auth/state_holder.dart';
import '../auth/status.dart';
import '../tab_bar/page.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  late final _emailController = TextEditingController();
  late final _passwordController = TextEditingController();
  late final _confirmPasswordController = TextEditingController();

  bool get isFormFilled =>
      _emailController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty &&
      _confirmPasswordController.text.isNotEmpty;
  bool _shouldValidate = false;

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
                'Регистрация',
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
                      shouldValidate: _shouldValidate,
                      onChanged: (_) => setState(
                        () {},
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    HInputField(
                      controller: _passwordController,
                      placeholder: 'Пароль',
                      type: InputType.password,
                      shouldValidate: _shouldValidate,
                      onChanged: (_) => setState(
                        () {},
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    HInputField(
                      controller: _confirmPasswordController,
                      placeholder: 'Подтвердите пароль',
                      type: InputType.confirmPassword,
                      validatorText: _passwordController.text,
                      shouldValidate: _shouldValidate,
                      onChanged: (_) => setState(
                        () {},
                      ),
                    ),
                  ],
                ),
              ),
              HButton(
                text: 'Далее',
                onTap: isFormFilled ? _onSubmit : null,
              ),
              HButton(
                text: 'Есть аккаунт? Войти',
                type: ButtonType.transparent,
                onTap: () => stateHolder.setStatus(AuthPageStatus.login),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSubmit() {
    final currentFormState = _formKey.currentState;
    final isValid =
        currentFormState == null ? false : currentFormState.validate();

    if (isValid) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const TabBarPage(),
        ),
      );
    } else {
      setState(() => _shouldValidate = true);
    }
  }
}
