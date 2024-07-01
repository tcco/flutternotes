import 'package:firebase_core/firebase_core.dart';
import 'package:flutternotes/services/auth/auth_provider.dart';
import 'package:flutternotes/services/auth/auth_user.dart';
import 'package:flutternotes/services/auth/firebase_auth_provider.dart';

class AuthService implements AuthProvider {
  final AuthProvider provider;
  const AuthService(this.provider);

  factory AuthService.firebase() => AuthService(
        FirebaseAuthProvider(),
      );

  @override
  Future<AuthUser> createUser(
    String email,
    String password,
  ) =>
      provider.createUser(
        email,
        password,
      );

  @override
  // TODO: implement currentUser
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<AuthUser> logIn(
    String email,
    String password,
  ) =>
      provider.logIn(
        email,
        password,
      );

  @override
  Future<void> logOut() => provider.logOut();

  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();

  @override
  Future<void> initialize() => provider.initialize();
}
