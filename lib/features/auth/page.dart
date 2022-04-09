import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            heightFactor: 3.0,
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
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Почта',
                  ),
                ),
                Text(
                  'Введите адрес своей корпоративной почты, чтобы на нее пришла ссылка для входа :)',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(56.0),
                    elevation: 0.0,
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'Войти',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
