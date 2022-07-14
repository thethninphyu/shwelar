import 'package:shwelar/models/response/game_list_response.dart';

abstract class HomeRepository {
  HomeRepository._();
  Future<GameListResponse> getGame();
}
