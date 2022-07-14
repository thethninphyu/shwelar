library game;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shwelar/config/serializers.dart';

part 'game.g.dart';

abstract class Game implements Built<Game, GameBuilder> {
  Game._();

  factory Game([updates(GameBuilder b)]) = _$Game;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'title')
  String? get title;
  @BuiltValueField(wireName: 'image')
  String? get image;
  @BuiltValueField(wireName: 'device')
  int? get device;
  @BuiltValueField(wireName: 'denomination')
  String? get denomination;
  @BuiltValueField(wireName: 'view')
  int? get view;
  @BuiltValueField(wireName: 'jpg')
  String? get jpg;
  String toJson() {
    return json.encode(serializers.serializeWith(Game.serializer, this));
  }

  static Game? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Game.serializer, json.decode(jsonString))!;
  }

  static Serializer<Game> get serializer => _$gameSerializer;
}
