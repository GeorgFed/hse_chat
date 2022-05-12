import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StudyPlanPage extends StatefulHookConsumerWidget {
  const StudyPlanPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StudyPlanPageState();
}

class _StudyPlanPageState extends ConsumerState<StudyPlanPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Учебный план',
          style: theme.textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) => Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            height: 96.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Домашнее задание',
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        'До 18.01.2022',
                        style: theme.textTheme.subtitle1?.copyWith(
                          color: const Color.fromARGB(221, 73, 73, 73),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Описание задания',
                    style: theme.textTheme.subtitle1?.copyWith(
                      color: const Color.fromARGB(221, 73, 73, 73),
                    ),
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 8.0,
          ),
        ),
      ),
    );
  }
}
