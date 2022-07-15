// GENERATED CODE - DO NOT MODIFY BY HAND

part of meta;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Meta> _$metaSerializer = new _$MetaSerializer();

class _$MetaSerializer implements StructuredSerializer<Meta> {
  @override
  final Iterable<Type> types = const [Meta, _$Meta];
  @override
  final String wireName = 'Meta';

  @override
  Iterable<Object?> serialize(Serializers serializers, Meta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('per_page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('current_page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastPage;
    if (value != null) {
      result
        ..add('last_page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prevPageUrl;
    if (value != null) {
      result
        ..add('prev_page_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.from;
    if (value != null) {
      result
        ..add('from')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.to;
    if (value != null) {
      result
        ..add('to')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Meta deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'per_page':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'current_page':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'last_page':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'prev_page_url':
          result.prevPageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$Meta extends Meta {
  @override
  final int? total;
  @override
  final int? perPage;
  @override
  final int? currentPage;
  @override
  final int? lastPage;
  @override
  final String? prevPageUrl;
  @override
  final int? from;
  @override
  final int? to;

  factory _$Meta([void Function(MetaBuilder)? updates]) =>
      (new MetaBuilder()..update(updates))._build();

  _$Meta._(
      {this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.prevPageUrl,
      this.from,
      this.to})
      : super._();

  @override
  Meta rebuild(void Function(MetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetaBuilder toBuilder() => new MetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Meta &&
        total == other.total &&
        perPage == other.perPage &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage &&
        prevPageUrl == other.prevPageUrl &&
        from == other.from &&
        to == other.to;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, total.hashCode), perPage.hashCode),
                        currentPage.hashCode),
                    lastPage.hashCode),
                prevPageUrl.hashCode),
            from.hashCode),
        to.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Meta')
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('prevPageUrl', prevPageUrl)
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class MetaBuilder implements Builder<Meta, MetaBuilder> {
  _$Meta? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _lastPage;
  int? get lastPage => _$this._lastPage;
  set lastPage(int? lastPage) => _$this._lastPage = lastPage;

  String? _prevPageUrl;
  String? get prevPageUrl => _$this._prevPageUrl;
  set prevPageUrl(String? prevPageUrl) => _$this._prevPageUrl = prevPageUrl;

  int? _from;
  int? get from => _$this._from;
  set from(int? from) => _$this._from = from;

  int? _to;
  int? get to => _$this._to;
  set to(int? to) => _$this._to = to;

  MetaBuilder();

  MetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _perPage = $v.perPage;
      _currentPage = $v.currentPage;
      _lastPage = $v.lastPage;
      _prevPageUrl = $v.prevPageUrl;
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Meta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Meta;
  }

  @override
  void update(void Function(MetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Meta build() => _build();

  _$Meta _build() {
    final _$result = _$v ??
        new _$Meta._(
            total: total,
            perPage: perPage,
            currentPage: currentPage,
            lastPage: lastPage,
            prevPageUrl: prevPageUrl,
            from: from,
            to: to);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
