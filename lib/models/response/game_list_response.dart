library game_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shwelar/config/serializers.dart';
import 'package:shwelar/models/data/game.dart';
import 'package:shwelar/models/data/meta.dart';

part 'game_list_response.g.dart';

abstract class GameListResponse
    implements Built<GameListResponse, GameListResponseBuilder> {
  GameListResponse._();

  factory GameListResponse([updates(GameListResponseBuilder b)]) =
      _$GameListResponse;

  @BuiltValueField(wireName: 'data')
  BuiltList<Game>? get data;
  @BuiltValueField(wireName: 'meta')
  Meta? get meta;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GameListResponse.serializer, this));
  }

  static GameListResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GameListResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<GameListResponse> get serializer =>
      _$gameListResponseSerializer;
}
