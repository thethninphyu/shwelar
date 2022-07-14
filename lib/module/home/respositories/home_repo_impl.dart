import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/models/response/game_list_response.dart';
import 'package:shwelar/module/home/respositories/home_repo.dart';
import 'package:shwelar/services/api_service.dart';

class HomeRepositoryImpl implements HomeRepository {
  final APIService _apiService = Modular.get<APIService>();

  HomeRepositoryImpl._();

  static HomeRepository get instance => HomeRepositoryImpl._();

  @override
  Future<GameListResponse> getGame() async {
    String key = "fJQwGAUI2TVtMU2BtI4XWEsHW";
    String page = "1";
    var response = await _apiService.getGame(key, page);
    return response.body!;
  }
}
