// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/auth/manager.dart' as _i8;
import 'features/chats/active_chat/view_model.dart' as _i11;
import 'features/chats/view_model.dart' as _i6;
import 'services/auth.dart' as _i4;
import 'services/database.dart' as _i7;
import 'services/database/assignment.dart' as _i3;
import 'services/database/chat.dart' as _i5;
import 'services/database/grade.dart' as _i9;
import 'services/database/group.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AssignmentService>(() => _i3.AssignmentService());
    gh.lazySingleton<_i4.AuthService>(() => _i4.AuthService());
    gh.lazySingleton<_i5.ChatDatabaseService>(() => _i5.ChatDatabaseService());
    gh.factory<_i6.ChatsViewModel>(() => _i6.ChatsViewModel(
          gh<_i4.AuthService>(),
          gh<_i5.ChatDatabaseService>(),
        ));
    gh.lazySingleton<_i7.DataBaseService>(() => _i7.DataBaseService());
    gh.lazySingleton<_i8.DataUserManager>(() => _i8.DataUserManager(
          gh<_i7.DataBaseService>(),
          gh<_i4.AuthService>(),
        ));
    gh.lazySingleton<_i9.GradeDatabaseService>(
        () => _i9.GradeDatabaseService());
    gh.lazySingleton<_i10.GroupDatabaseService>(
        () => _i10.GroupDatabaseService());
    gh.factory<_i11.ActiveChatViewModel>(
        () => _i11.ActiveChatViewModel(gh<_i5.ChatDatabaseService>()));
    gh.lazySingleton<_i8.AuthManager>(
        () => _i8.AuthManager(gh<_i4.AuthService>()));
    return this;
  }
}
