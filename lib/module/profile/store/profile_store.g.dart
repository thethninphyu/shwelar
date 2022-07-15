// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileStore on _ProfileStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_ProfileStoreBase.isLoading', context: context);

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
      Atom(name: '_ProfileStoreBase.errorMessage', context: context);

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

  late final _$sourceAtom =
      Atom(name: '_ProfileStoreBase.source', context: context);

  @override
  String get source {
    _$sourceAtom.reportRead();
    return super.source;
  }

  @override
  set source(String value) {
    _$sourceAtom.reportWrite(value, super.source, () {
      super.source = value;
    });
  }

  late final _$getPlayerSurceAsyncAction =
      AsyncAction('_ProfileStoreBase.getPlayerSurce', context: context);

  @override
  Future<void> getPlayerSurce({required dynamic Function() success}) {
    return _$getPlayerSurceAsyncAction
        .run(() => super.getPlayerSurce(success: success));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
source: ${source}
    ''';
  }
}
