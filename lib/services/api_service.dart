import 'package:chopper/chopper.dart';
import 'package:shwelar/models/data/auth.dart';
import 'package:shwelar/models/response/game_list_response.dart';
import 'package:shwelar/models/response/player_read_response.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class APIService extends ChopperService {
  static APIService create([ChopperClient? client]) => _$APIService(client);

  @Post(path: '/login')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<Auth>> login(
      @Field('username') String username, @Field('password') String password);

  @Get(path: '/games')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<GameListResponse>> getGame(
      @Query('key') String key, @Query('page') String page);

  @Get(path: '/player/read')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<PlayerReadResponse>> getPlayerSource(
      @Query('key') String key, @Query('username') String username);
}
