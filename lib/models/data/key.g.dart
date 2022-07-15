// GENERATED CODE - DO NOT MODIFY BY HAND

part of key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Key> _$keySerializer = new _$KeySerializer();

class _$KeySerializer implements StructuredSerializer<Key> {
  @override
  final Iterable<Type> types = const [Key, _$Key];
  @override
  final String wireName = 'Key';

  @override
  Iterable<Object?> serialize(Serializers serializers, Key object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.keygen;
    if (value != null) {
      result
        ..add('keygen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Key deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KeyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'keygen':
          result.keygen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Key extends Key {
  @override
  final String? keygen;

  factory _$Key([void Function(KeyBuilder)? updates]) =>
      (new KeyBuilder()..update(updates))._build();

  _$Key._({this.keygen}) : super._();

  @override
  Key rebuild(void Function(KeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyBuilder toBuilder() => new KeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Key && keygen == other.keygen;
  }

  @override
  int get hashCode {
    return $jf($jc(0, keygen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Key')..add('keygen', keygen))
        .toString();
  }
}

class KeyBuilder implements Builder<Key, KeyBuilder> {
  _$Key? _$v;

  String? _keygen;
  String? get keygen => _$this._keygen;
  set keygen(String? keygen) => _$this._keygen = keygen;

  KeyBuilder();

  KeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keygen = $v.keygen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Key other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Key;
  }

  @override
  void update(void Function(KeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Key build() => _build();

  _$Key _build() {
    final _$result = _$v ?? new _$Key._(keygen: keygen);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
