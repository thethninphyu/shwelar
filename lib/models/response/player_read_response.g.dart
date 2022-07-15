// GENERATED CODE - DO NOT MODIFY BY HAND

part of player_read_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlayerReadResponse> _$playerReadResponseSerializer =
    new _$PlayerReadResponseSerializer();

class _$PlayerReadResponseSerializer
    implements StructuredSerializer<PlayerReadResponse> {
  @override
  final Iterable<Type> types = const [PlayerReadResponse, _$PlayerReadResponse];
  @override
  final String wireName = 'PlayerReadResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PlayerReadResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.success;
    if (value != null) {
      result
        ..add('success')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.errormsg;
    if (value != null) {
      result
        ..add('errormsg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Score)));
    }
    return result;
  }

  @override
  PlayerReadResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlayerReadResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'errormsg':
          result.errormsg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score))! as Score);
          break;
      }
    }

    return result.build();
  }
}

class _$PlayerReadResponse extends PlayerReadResponse {
  @override
  final bool? success;
  @override
  final String? errormsg;
  @override
  final Score? data;

  factory _$PlayerReadResponse(
          [void Function(PlayerReadResponseBuilder)? updates]) =>
      (new PlayerReadResponseBuilder()..update(updates))._build();

  _$PlayerReadResponse._({this.success, this.errormsg, this.data}) : super._();

  @override
  PlayerReadResponse rebuild(
          void Function(PlayerReadResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayerReadResponseBuilder toBuilder() =>
      new PlayerReadResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayerReadResponse &&
        success == other.success &&
        errormsg == other.errormsg &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, success.hashCode), errormsg.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlayerReadResponse')
          ..add('success', success)
          ..add('errormsg', errormsg)
          ..add('data', data))
        .toString();
  }
}

class PlayerReadResponseBuilder
    implements Builder<PlayerReadResponse, PlayerReadResponseBuilder> {
  _$PlayerReadResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _errormsg;
  String? get errormsg => _$this._errormsg;
  set errormsg(String? errormsg) => _$this._errormsg = errormsg;

  ScoreBuilder? _data;
  ScoreBuilder get data => _$this._data ??= new ScoreBuilder();
  set data(ScoreBuilder? data) => _$this._data = data;

  PlayerReadResponseBuilder();

  PlayerReadResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _errormsg = $v.errormsg;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayerReadResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlayerReadResponse;
  }

  @override
  void update(void Function(PlayerReadResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlayerReadResponse build() => _build();

  _$PlayerReadResponse _build() {
    _$PlayerReadResponse _$result;
    try {
      _$result = _$v ??
          new _$PlayerReadResponse._(
              success: success, errormsg: errormsg, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlayerReadResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
