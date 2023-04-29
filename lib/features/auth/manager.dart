import 'package:riverpod/riverpod.dart';

import '../../services/auth.dart';
import '../../services/database.dart';

late final authManagerProvider = Provider(
  (ref) => AuthManager(
    ref.watch(authServiceProvider),
  ),
);

late final databaseUserManagerProvider = Provider(
  (ref) => DataUserManager(
    ref.watch(dataBaseServiceProvider),
    ref.watch(authServiceProvider),
  ),
);

class AuthManager {
  final AuthService _authService;

  AuthManager(this._authService);
  Future signIn(String email, String password) async {
    _authService.signInWithEmailAndPassword(email, password);
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    _authService.registerWithEmailAndPassword(email, password);
    print(getCurrentUserUid());
  }

  String? getCurrentUserUid() => _authService.getCurrentUserUid();
}

class DataUserManager {
  final DataBaseService _dataBaseService;
  final AuthService _authService;

  DataUserManager(this._dataBaseService, this._authService);

  Future addUserInfo(String? uid, String name) async {
    String status;
    if (_authService.getCurrentUserEmail()!.endsWith('@edu.hse.ru')) {
      status = 'student';
    } else {
      status = 'teacher';
    }
    _dataBaseService.createUserData(
      uid!,
      name,
      'avatarUrl',
      status,
    );
  }
}
