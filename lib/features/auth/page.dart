import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/style/assets.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(AppAssets.logo),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Wrap(
            spacing: 16.0,
            alignment: WrapAlignment.center,
            children: [
              const Text('Вход'),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Почта',
                ),
              ),
              const Text(
                'Введите адрес своей корпоративной почты, чтобы на нее пришла ссылка для входа :)',
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 2),
                onPressed: () {},
                child: const Text('Войти'),
              )
            ],
          ),
        ),
      );
}
