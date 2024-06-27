import 'package:flutternotes/services/auth/auth_provider.dart';
import 'package:flutternotes/services/auth/auth_user.dart';

class AuthService implements AuthProvider {
  final AuthProvider provider;
  const AuthService(this.provider);

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
}
