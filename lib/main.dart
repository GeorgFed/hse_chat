import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'common/style/assets.dart';
import 'features/auth/page.dart';

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFEFEFEF),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Color(0xFFEFEFEF),
          ),
        ),
        home: const AuthPage(),
      );
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: SvgPicture.asset(AppAssets.logo),
        ),
      );
}
