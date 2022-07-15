import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/models/response/player_read_response.dart';
import 'package:shwelar/module/auth/store/auth_store.dart';
import 'package:shwelar/module/profile/repositories/profile_repo.dart';
import 'package:shwelar/services/api_service.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final APIService _apiService = Modular.get<APIService>();

  final AuthStore _authStore = Modular.get<AuthStore>();

  ProfileRepositoryImpl._();

  static ProfileRepository get instance => ProfileRepositoryImpl._();

  @override
  Future<PlayerReadResponse> getPlayerSource() async {
    var response =
        await _apiService.getPlayerSource(_authStore.key, _authStore.username);
    return response.body!;
  }
}
