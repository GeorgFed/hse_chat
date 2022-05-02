import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/widgets/search_bar.dart';

class ChatsPage extends ConsumerWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Чаты',
                          style: theme.textTheme.headline1?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                            top: 2,
                            bottom: 2,
                          ),
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: theme.primaryColor.withAlpha(50),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: theme.primaryColor,
                                size: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const HSearchBar(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
