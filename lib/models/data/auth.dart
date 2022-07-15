library auth;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shwelar/config/serializers.dart';
import 'package:shwelar/models/data/key.dart';

part 'auth.g.dart';

abstract class Auth implements Built<Auth, AuthBuilder> {
  Auth._();

  factory Auth([updates(AuthBuilder b)]) = _$Auth;

  @BuiltValueField(wireName: 'token')
  String? get token;
  @BuiltValueField(wireName: 'key')
  Key? get key;
  String toJson() {
    return json.encode(serializers.serializeWith(Auth.serializer, this));
  }

  static Auth fromJson(String jsonString) {
    return serializers.deserializeWith(
        Auth.serializer, json.decode(jsonString))!;
  }

  static Serializer<Auth> get serializer => _$authSerializer;
}
