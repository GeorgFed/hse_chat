import 'package:flutter/material.dart';

class UserCell extends StatelessWidget {
  final String uid;
  final String avatarURL;
  final String name;
  final String status;
  final VoidCallback onPressed;

  const UserCell({
    required this.uid,
    required this.onPressed,
    required this.avatarURL,
    required this.name,
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  avatarURL,
                ),
                radius: 30,
              ),
              title: Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Text(
                    status,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
