import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
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
          const SizedBox(
            height: 80,
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.amber,
                ),
                title: Text('Имя'),
                subtitle: Text('Группа'),
              ),
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
