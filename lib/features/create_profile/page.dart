import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app/models/group.dart';
import '../../common/style/assets.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/input_field.dart';
import '../../services/database.dart';
import '../auth/manager.dart';
import '../tab_bar/page.dart';

class CreateProfilePage extends ConsumerStatefulWidget {
  const CreateProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateProfilePageState();
}

class _CreateProfilePageState extends ConsumerState<CreateProfilePage> {
  final _formKey = GlobalKey<FormState>();

  late final _nameController = TextEditingController();
  late final _groupController = TextEditingController();

  bool get isFormFilled =>
      _nameController.text.isNotEmpty && _groupController.text.isNotEmpty;
  var _shouldValidate = false;

  @override
  Widget build(BuildContext context) {
    final dataManager = ref.read(databaseUserManagerProvider);
    final authManager = ref.read(authManagerProvider);
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AppAssets.logo),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          heightFactor: 2.0,
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              Text(
                'Создать профиль',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Colors.black),
                textAlign: TextAlign.start,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    HInputField(
                      controller: _nameController,
                      placeholder: 'Имя',
                      type: InputType.name,
                      shouldValidate: _shouldValidate,
                      onChanged: (_) => setState(
                        () {},
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    HInputField(
                      controller: _groupController,
                      placeholder: 'Группа',
                      type: InputType.number,
                      shouldValidate: _shouldValidate,
                      onChanged: (_) => setState(
                        () {},
                      ),
                    ),
                  ],
                ),
              ),
              HButton(
                text: 'Готово',
                onTap: isFormFilled
                    ? () => _onSubmit(dataManager, authManager)
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSubmit(DataUserManager dataUserManager, AuthManager authManager) {
    final currentFormState = _formKey.currentState;
    final isValid =
        currentFormState == null ? false : currentFormState.validate();

    if (isValid) {
      dataUserManager.addUserInfo(
          authManager.getCurrentUserUid(), _nameController.text);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const TabBarPage(),
        ),
      );
    } else {
      setState(() => _shouldValidate = true);
    }
  }
}
