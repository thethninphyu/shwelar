library score;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shwelar/config/serializers.dart';

part 'score.g.dart';

abstract class Score implements Built<Score, ScoreBuilder> {
  Score._();

  factory Score([updates(ScoreBuilder b)]) = _$Score;

  @BuiltValueField(wireName: 'player_score')
  String? get playerScore;
  String toJson() {
    return json.encode(serializers.serializeWith(Score.serializer, this));
  }

  static Score? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Score.serializer, json.decode(jsonString))!;
  }

  static Serializer<Score> get serializer => _$scoreSerializer;
}
