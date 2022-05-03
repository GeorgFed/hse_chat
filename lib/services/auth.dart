import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';

import '../app/models/chat_user.dart';
import 'database.dart';

final userController = StreamController<ChatUser?>.broadcast(sync: true);
final FirebaseAuth auth = FirebaseAuth.instance;

late final authServiceProvider = Provider(
  (ref) => AuthService(),
);

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  ChatUser? _userFromFirebaseUser(User? user) =>
      user != null ? ChatUser(uid: user.uid) : null;

  String? getCurrentUserUid() {
    print(auth.currentUser?.uid);
    return auth.currentUser?.uid;
  }

  String? getCurrentUserEmail() {
    return auth.currentUser?.email;
  }

  // Stream<ChatUser?> get user =>
  //     _auth.authStateChanges().map(_userFromFirebaseUser);

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      userController.add(_userFromFirebaseUser(user));
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      // await DataBaseService().updateUserData('My name', 'http:/', 'student');
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future registerWithEmail(String email) async {
    try {
      var acs = ActionCodeSettings(
          // URL you want to redirect back to. The domain (www.example.com) for this
          // URL must be whitelisted in the Firebase Console.
          url: 'https://www.example.com/finishSignUp?cartId=1234',
          // This must be true
          handleCodeInApp: true,
          iOSBundleId: 'com.example.ios',
          androidPackageName: 'com.example.android',
          // installIfNotAvailable
          androidInstallApp: true,
          // minimumVersion
          androidMinimumVersion: '12');

      var emailAuth = 'vladislav.sizov.2002@gmail.com';
      FirebaseAuth.instance
          .sendSignInLinkToEmail(email: emailAuth, actionCodeSettings: acs)
          .catchError(
              (onError) => print('Error sending email verification $onError'))
          .then((value) => print('Successfully sent email verification'));
    } catch (e) {}
  }
}
