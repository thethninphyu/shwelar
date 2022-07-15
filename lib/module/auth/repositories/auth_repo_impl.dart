import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shwelar/app_module.dart';
import 'package:shwelar/app_routes.dart';
import 'package:shwelar/models/data/auth.dart';
import 'package:shwelar/module/auth/repositories/auth_repo.dart';
import 'package:shwelar/services/api_service.dart';
import 'package:shwelar/utils/route_utils.dart';

class AuthRepositoryImpl implements AuthRepository {
  final APIService _apiService = Modular.get<APIService>();

  AuthRepositoryImpl._();

  static AuthRepository get instance => AuthRepositoryImpl._();

  @override
  Future<Auth> getAuth({
    required String username,
    required String password,
  }) async {
    Box box1 = await Hive.openBox('logindata');
    var response = await _apiService.login(username, password);
    box1.put('username', username);
    box1.put('password', password);
    box1.put('token', response.body!.token);
    box1.put('key', response.body!.key!.keygen);
    return response.body!;
  }

  @override
  Future logout() async {
    Box box1 = await Hive.openBox('logindata');
    box1.clear();
    RouteUtils.changeRoute<AppModule>(AppRoutes.root);
  }
}
