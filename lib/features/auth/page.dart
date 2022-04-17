import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/style/assets.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/input_field.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
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
                const HInputField(placeholder: 'Почта'),
                const HInputField(placeholder: 'Пароль'),
                Text(
                  'Введите адрес своей корпоративной почты, чтобы на нее пришла ссылка для входа :)',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                HButton(
                  text: 'Войти',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      );
}
