import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class APIService extends ChopperService {
  static APIService create([ChopperClient? client]) => _$APIService(client);

  @Post(path: '/login')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> login(
      @Field('username') String username, @Field('password') String password);
}
