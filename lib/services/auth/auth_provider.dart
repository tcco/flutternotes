
import 'package:flutternotes/services/auth/auth_user.dart';

abstract class AuthProvider {
  AuthUser? get currentUser;
  Future<AuthUser> logIn(String email, String password);
  Future<AuthUser> createUser(String email, String password);
  Future<void> logOut();
  Future<void> sendEmailVerification();
}