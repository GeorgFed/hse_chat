import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/models/chat_user_data.dart';
import '../../services/database.dart';
import '../../services/database/chat.dart';

class FriendsPage extends ConsumerStatefulWidget {
  final String chatId;
  const FriendsPage(
    this.chatId, {
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends ConsumerState<FriendsPage> {
  final searchController = TextEditingController();

  List<ChatUserData> friends = [];
  List<ChatUserData> allUsers = [];
  List<ChatUserData> foundUsers = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  Future<void> get() async {
    friends = await ref.read(dataBaseServiceProvider).getAllUsers();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme.copyWith(color: const Color.fromARGB(255, 8, 0, 57)),
          shadowColor: Colors.transparent,
          title: const Text(
            'Друзья',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SearchInput(
                  textController: searchController,
                  hintText: 'Поиск',
                  onTextChanged: (text) {
                    setState(() {
                      foundUsers = friends
                          .where(
                            (element) => element.name.toLowerCase().contains(
                                  text.toLowerCase(),
                                ),
                          )
                          .toList();
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Expanded(
                child: searchController.text.isNotEmpty
                    ? ListView.builder(
                        itemCount: foundUsers.length,
                        itemBuilder: (context, index) => UserTile(
                          uid: foundUsers[index].uid,
                          name: foundUsers[index].name,
                          avatarURL: foundUsers[index].avatarUrl,
                          onPressed: () {},
                          chatId: widget.chatId,
                        ),
                      )
                    : ListView.builder(
                        itemCount: friends.length,
                        itemBuilder: (context, index) => UserTile(
                          uid: friends[index].uid,
                          name: friends[index].name,
                          avatarURL: friends[index].avatarUrl,
                          onPressed: () {},
                          chatId: widget.chatId,
                        ),
                      ),
              ),
            ],
          ),
        ),
      );
}

class SearchInput extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final Function(String text) onTextChanged;

  const SearchInput({
    required this.textController,
    required this.hintText,
    required this.onTextChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Color.fromARGB(255, 103, 161, 255).withOpacity(.1),
          ),
        ]),
        child: TextField(
          controller: textController,
          onChanged: onTextChanged,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(1.0)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(1.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(1.0)),
            ),
          ),
        ),
      );
}

class UserTile extends ConsumerStatefulWidget {
  final String uid;
  final String name;
  final String avatarURL;
  final VoidCallback onPressed;
  final String chatId;

  const UserTile({
    required this.uid,
    required this.name,
    required this.avatarURL,
    required this.onPressed,
    required this.chatId,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<UserTile> createState() => _UserTileState();
}

class _UserTileState extends ConsumerState<UserTile> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) => InkWell(
        child: Column(
          children: [
            ListTile(
              trailing: IconButton(
                icon: isAdded ? const Icon(Icons.check) : const Icon(Icons.add_circle),
                color: Color.fromARGB(255, 32, 82, 206),
                onPressed: isAdded
                    ? () {}
                    : () {
                        setState(() {
                          isAdded = true;
                          ref.read(chatDatabaseServiceProvider).addUserToChat(
                                widget.chatId,
                                widget.uid,
                              );
                        });
                      },
              ),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://www.woolha.com/media/2020/03/eevee.png',
                ),
                radius: 30,
              ),
              title: Text(
                widget.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
}
