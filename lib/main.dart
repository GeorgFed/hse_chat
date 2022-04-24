import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/state_holder.dart';
import 'services/auth.dart';
import 'services/database/chat.dart';
import 'services/database.dart';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'services/database/group.dart';

final providerContainer = ProviderContainer();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      );
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<types.Message> _messages = [];
    final _auth = AuthService();

    final futureAsyncValue = ref.watch(userProvider); // same syntax

    return Scaffold(
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signInWithEmailAndPassword(
                    'vlad1@gmail.com', 'test1234');
              },
              icon: Icon(Icons.person),
              label: Text('Log out')),
          FlatButton.icon(
              onPressed: () async {
                await GroupDatabaseService().printGroup();
              },
              icon: Icon(Icons.person),
              label: Text('Log out')),
        ],
      ),

      // body: Center(

      //   // child: futureAsyncValue.when(
      //   //   data: (data) => Text('Value: $data'),
      //   //   loading: () => const CircularProgressIndicator(),
      //   //   error: (e, st) => Text('Error: $e'),
      //   // ),
      // ),
    );
  }
}
