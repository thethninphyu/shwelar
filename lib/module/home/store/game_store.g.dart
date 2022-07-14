// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameStore on _GameStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_GameStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_GameStoreBase.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$gameAtom = Atom(name: '_GameStoreBase.game', context: context);

  @override
  ObservableList<Game> get game {
    _$gameAtom.reportRead();
    return super.game;
  }

  @override
  set game(ObservableList<Game> value) {
    _$gameAtom.reportWrite(value, super.game, () {
      super.game = value;
    });
  }

  late final _$getGameAsyncAction =
      AsyncAction('_GameStoreBase.getGame', context: context);

  @override
  Future<void> getGame() {
    return _$getGameAsyncAction.run(() => super.getGame());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
game: ${game}
    ''';
  }
}
