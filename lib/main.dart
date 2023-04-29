import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

import 'features/auth/page.dart';
import 'main.config.dart';

final providerContainer = ProviderContainer();

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Firebase.initializeApp();
  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFEFEFEF),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Color(0xFFEFEFEF),
          ),
          fontFamily: GoogleFonts.inter().fontFamily,
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            button: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            bodyText1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
            subtitle1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
          ),
        ),
        home: const AuthPage(),
      );
}
