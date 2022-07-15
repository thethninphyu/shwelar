import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/models/response/game_list_response.dart';
import 'package:shwelar/module/auth/store/auth_store.dart';
import 'package:shwelar/module/home/respositories/home_repo.dart';
import 'package:shwelar/services/api_service.dart';

class HomeRepositoryImpl implements HomeRepository {
  final APIService _apiService = Modular.get<APIService>();

  final AuthStore _authStore = Modular.get<AuthStore>();

  HomeRepositoryImpl._();

  static HomeRepository get instance => HomeRepositoryImpl._();

  @override
  Future<GameListResponse> getGame() async {
    String page = "1";
    var response = await _apiService.getGame(_authStore.key, page);
    return response.body!;
  }
}
