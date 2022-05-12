import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsersPage extends StatefulHookConsumerWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UsersPageState();
}

class _UsersPageState extends ConsumerState<UsersPage> {
  late List<String> users;
  late List<int> selectedItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Чаты',
          style: theme.textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          title: Text('User $index'),
          trailing: selectedItems.contains(index) ? const Icon(Icons.circle) : const Icon(Icons.circle_outlined),
          onTap: () {
            if (selectedItems.contains(index)) {
              setState(() {
                selectedItems.removeWhere((val) => val == index);
              });
            }
          },
          onLongPress: () {
            if (!selectedItems.contains(index)) {
              setState(() {
                selectedItems.add(index);
              });
            }
          },
        ),
      ),
    );
  }
}
