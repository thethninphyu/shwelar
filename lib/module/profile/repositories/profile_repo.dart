import 'package:shwelar/models/response/player_read_response.dart';

abstract class ProfileRepository {
  ProfileRepository._();
  Future<PlayerReadResponse> getPlayerSource();
}
