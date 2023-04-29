import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/auth.dart';

class ProfilePage extends StatefulHookConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  final _defaultName = 'Влад Сизов';
  @override
  Widget build(BuildContext context) {
    final userName = ref.watch(authServiceProvider).currentUserName ?? _defaultName;
    final userEmail = ref.watch(authServiceProvider).currentUserEmail ?? '???';

    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Профиль',
          style: theme.textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 16.0,
            child: Container(color: const Color.fromARGB(255, 229, 229, 229)),
          ),
          SizedBox(
            height: 80,
            child: Center(
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.amber,
                ),
                title: Text(userName),
                subtitle: Text(userEmail),
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
            child: Container(color: const Color.fromARGB(255, 229, 229, 229)),
          ),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Оценки',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '6',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      '8',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      '7',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
            child: Container(color: const Color.fromARGB(255, 229, 229, 229)),
          ),
          ListTile(
            title: Text(
              'Сменить аватар',
              style: TextStyle(
                color: theme.primaryColor,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Сменить имя и группу',
              style: TextStyle(
                color: theme.primaryColor,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Выйти',
              style: TextStyle(
                color: theme.colorScheme.error,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
