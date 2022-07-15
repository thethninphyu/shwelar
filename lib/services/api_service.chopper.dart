// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$APIService extends APIService {
  _$APIService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = APIService;

  @override
  Future<Response<Auth>> login(String username, String password) {
    final $url = '/api/login';
    final $body = <String, dynamic>{'username': username, 'password': password};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Auth, Auth>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<GameListResponse>> getGame(String key, String page) {
    final $url = '/api/games';
    final $params = <String, dynamic>{'key': key, 'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<GameListResponse, GameListResponse>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<PlayerReadResponse>> getPlayerSource(
      String key, String username) {
    final $url = '/api/player/read';
    final $params = <String, dynamic>{'key': key, 'username': username};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<PlayerReadResponse, PlayerReadResponse>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }
}
