// GENERATED CODE - DO NOT MODIFY BY HAND

part of score;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Score> _$scoreSerializer = new _$ScoreSerializer();

class _$ScoreSerializer implements StructuredSerializer<Score> {
  @override
  final Iterable<Type> types = const [Score, _$Score];
  @override
  final String wireName = 'Score';

  @override
  Iterable<Object?> serialize(Serializers serializers, Score object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.playerScore;
    if (value != null) {
      result
        ..add('player_score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Score deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScoreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'player_score':
          result.playerScore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Score extends Score {
  @override
  final String? playerScore;

  factory _$Score([void Function(ScoreBuilder)? updates]) =>
      (new ScoreBuilder()..update(updates))._build();

  _$Score._({this.playerScore}) : super._();

  @override
  Score rebuild(void Function(ScoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScoreBuilder toBuilder() => new ScoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Score && playerScore == other.playerScore;
  }

  @override
  int get hashCode {
    return $jf($jc(0, playerScore.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Score')
          ..add('playerScore', playerScore))
        .toString();
  }
}

class ScoreBuilder implements Builder<Score, ScoreBuilder> {
  _$Score? _$v;

  String? _playerScore;
  String? get playerScore => _$this._playerScore;
  set playerScore(String? playerScore) => _$this._playerScore = playerScore;

  ScoreBuilder();

  ScoreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playerScore = $v.playerScore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Score other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Score;
  }

  @override
  void update(void Function(ScoreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Score build() => _build();

  _$Score _build() {
    final _$result = _$v ?? new _$Score._(playerScore: playerScore);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
