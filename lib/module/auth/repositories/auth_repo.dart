import 'package:shwelar/models/data/auth.dart';

abstract class AuthRepository {
  AuthRepository._();
  Future<Auth> getAuth({
    required String username,
    required String password,
  });

  Future logout();
}
