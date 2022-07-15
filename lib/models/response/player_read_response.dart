library player_read_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shwelar/config/serializers.dart';
import 'package:shwelar/models/data/score.dart';

part 'player_read_response.g.dart';

abstract class PlayerReadResponse
    implements Built<PlayerReadResponse, PlayerReadResponseBuilder> {
  PlayerReadResponse._();

  factory PlayerReadResponse([updates(PlayerReadResponseBuilder b)]) =
      _$PlayerReadResponse;

  @BuiltValueField(wireName: 'success')
  bool? get success;
  @BuiltValueField(wireName: 'errormsg')
  String? get errormsg;
  @BuiltValueField(wireName: 'data')
  Score? get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PlayerReadResponse.serializer, this));
  }

  static PlayerReadResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PlayerReadResponse.serializer, json.decode(jsonString));
  }

  static Serializer<PlayerReadResponse> get serializer =>
      _$playerReadResponseSerializer;
}
