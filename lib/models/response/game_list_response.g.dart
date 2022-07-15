// GENERATED CODE - DO NOT MODIFY BY HAND

part of game_list_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GameListResponse> _$gameListResponseSerializer =
    new _$GameListResponseSerializer();

class _$GameListResponseSerializer
    implements StructuredSerializer<GameListResponse> {
  @override
  final Iterable<Type> types = const [GameListResponse, _$GameListResponse];
  @override
  final String wireName = 'GameListResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Game)])));
    }
    value = object.meta;
    if (value != null) {
      result
        ..add('meta')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Meta)));
    }
    return result;
  }

  @override
  GameListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Game)]))!
              as BuiltList<Object?>);
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(Meta))! as Meta);
          break;
      }
    }

    return result.build();
  }
}

class _$GameListResponse extends GameListResponse {
  @override
  final BuiltList<Game>? data;
  @override
  final Meta? meta;

  factory _$GameListResponse(
          [void Function(GameListResponseBuilder)? updates]) =>
      (new GameListResponseBuilder()..update(updates))._build();

  _$GameListResponse._({this.data, this.meta}) : super._();

  @override
  GameListResponse rebuild(void Function(GameListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameListResponseBuilder toBuilder() =>
      new GameListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameListResponse &&
        data == other.data &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), meta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameListResponse')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class GameListResponseBuilder
    implements Builder<GameListResponse, GameListResponseBuilder> {
  _$GameListResponse? _$v;

  ListBuilder<Game>? _data;
  ListBuilder<Game> get data => _$this._data ??= new ListBuilder<Game>();
  set data(ListBuilder<Game>? data) => _$this._data = data;

  MetaBuilder? _meta;
  MetaBuilder get meta => _$this._meta ??= new MetaBuilder();
  set meta(MetaBuilder? meta) => _$this._meta = meta;

  GameListResponseBuilder();

  GameListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameListResponse;
  }

  @override
  void update(void Function(GameListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameListResponse build() => _build();

  _$GameListResponse _build() {
    _$GameListResponse _$result;
    try {
      _$result = _$v ??
          new _$GameListResponse._(data: _data?.build(), meta: _meta?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GameListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
