library key;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shwelar/config/serializers.dart';

part 'key.g.dart';

abstract class Key implements Built<Key, KeyBuilder> {
  Key._();

  factory Key([updates(KeyBuilder b)]) = _$Key;

  @BuiltValueField(wireName: 'keygen')
  String? get keygen;
  String toJson() {
    return json.encode(serializers.serializeWith(Key.serializer, this));
  }

  static Key fromJson(String jsonString) {
    return serializers.deserializeWith(Key.serializer, json.decode(jsonString))!;
  }

  static Serializer<Key> get serializer => _$keySerializer;
}
