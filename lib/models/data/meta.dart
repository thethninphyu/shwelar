library meta;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shwelar/config/serializers.dart';

part 'meta.g.dart';

abstract class Meta implements Built<Meta, MetaBuilder> {
  Meta._();

  factory Meta([updates(MetaBuilder b)]) = _$Meta;

  @BuiltValueField(wireName: 'total')
  int? get total;
  @BuiltValueField(wireName: 'per_page')
  int? get perPage;
  @BuiltValueField(wireName: 'current_page')
  int? get currentPage;
  @BuiltValueField(wireName: 'last_page')
  int? get lastPage;
  @BuiltValueField(wireName: 'prev_page_url')
  String? get prevPageUrl;
  @BuiltValueField(wireName: 'from')
  int? get from;
  @BuiltValueField(wireName: 'to')
  int? get to;
  String toJson() {
    return json.encode(serializers.serializeWith(Meta.serializer, this));
  }

  static Meta? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Meta.serializer, json.decode(jsonString))!;
  }

  static Serializer<Meta> get serializer => _$metaSerializer;
}
