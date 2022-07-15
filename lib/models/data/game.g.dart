// GENERATED CODE - DO NOT MODIFY BY HAND

part of game;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Game> _$gameSerializer = new _$GameSerializer();

class _$GameSerializer implements StructuredSerializer<Game> {
  @override
  final Iterable<Type> types = const [Game, _$Game];
  @override
  final String wireName = 'Game';

  @override
  Iterable<Object?> serialize(Serializers serializers, Game object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.device;
    if (value != null) {
      result
        ..add('device')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.denomination;
    if (value != null) {
      result
        ..add('denomination')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.view;
    if (value != null) {
      result
        ..add('view')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.jpg;
    if (value != null) {
      result
        ..add('jpg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Game deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'device':
          result.device = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'denomination':
          result.denomination = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'view':
          result.view = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'jpg':
          result.jpg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Game extends Game {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final int? device;
  @override
  final String? denomination;
  @override
  final int? view;
  @override
  final String? jpg;

  factory _$Game([void Function(GameBuilder)? updates]) =>
      (new GameBuilder()..update(updates))._build();

  _$Game._(
      {this.id,
      this.name,
      this.title,
      this.image,
      this.device,
      this.denomination,
      this.view,
      this.jpg})
      : super._();

  @override
  Game rebuild(void Function(GameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameBuilder toBuilder() => new GameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Game &&
        id == other.id &&
        name == other.name &&
        title == other.title &&
        image == other.image &&
        device == other.device &&
        denomination == other.denomination &&
        view == other.view &&
        jpg == other.jpg;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            title.hashCode),
                        image.hashCode),
                    device.hashCode),
                denomination.hashCode),
            view.hashCode),
        jpg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Game')
          ..add('id', id)
          ..add('name', name)
          ..add('title', title)
          ..add('image', image)
          ..add('device', device)
          ..add('denomination', denomination)
          ..add('view', view)
          ..add('jpg', jpg))
        .toString();
  }
}

class GameBuilder implements Builder<Game, GameBuilder> {
  _$Game? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _device;
  int? get device => _$this._device;
  set device(int? device) => _$this._device = device;

  String? _denomination;
  String? get denomination => _$this._denomination;
  set denomination(String? denomination) => _$this._denomination = denomination;

  int? _view;
  int? get view => _$this._view;
  set view(int? view) => _$this._view = view;

  String? _jpg;
  String? get jpg => _$this._jpg;
  set jpg(String? jpg) => _$this._jpg = jpg;

  GameBuilder();

  GameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _title = $v.title;
      _image = $v.image;
      _device = $v.device;
      _denomination = $v.denomination;
      _view = $v.view;
      _jpg = $v.jpg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Game other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Game;
  }

  @override
  void update(void Function(GameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Game build() => _build();

  _$Game _build() {
    final _$result = _$v ??
        new _$Game._(
            id: id,
            name: name,
            title: title,
            image: image,
            device: device,
            denomination: denomination,
            view: view,
            jpg: jpg);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
