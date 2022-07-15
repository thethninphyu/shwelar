import 'package:shwelar/models/data/auth.dart';

abstract class AuthRepository {
  AuthRepository._();
  Future<Auth> getAuth();
}
