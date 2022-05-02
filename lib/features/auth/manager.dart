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
  }

  String? getCurrentUserUid() {
    return _authService.getCurrentUserUid();
  }
}

class DataUserManager {
  final DataBaseService _dataBaseService;

  DataUserManager(this._dataBaseService);

  Future addUserInfo(String? uid, String name) async {
    print("Update user data");
    print(uid);
    _dataBaseService.updateUserData(uid!, name, "avarUrl", "status");
  }
}
