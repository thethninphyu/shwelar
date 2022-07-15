// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_AuthStoreBase.isLoading', context: context);

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

  late final _$isLoginAtom =
      Atom(name: '_AuthStoreBase.isLogin', context: context);

  @override
  bool get isLogin {
    _$isLoginAtom.reportRead();
    return super.isLogin;
  }

  @override
  set isLogin(bool value) {
    _$isLoginAtom.reportWrite(value, super.isLogin, () {
      super.isLogin = value;
    });
  }

  late final _$usernameAtom =
      Atom(name: '_AuthStoreBase.username', context: context);

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  late final _$tokenAtom = Atom(name: '_AuthStoreBase.token', context: context);

  @override
  String get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  late final _$keyAtom = Atom(name: '_AuthStoreBase.key', context: context);

  @override
  String get key {
    _$keyAtom.reportRead();
    return super.key;
  }

  @override
  set key(String value) {
    _$keyAtom.reportWrite(value, super.key, () {
      super.key = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_AuthStoreBase.errorMessage', context: context);

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

  late final _$authAtom = Atom(name: '_AuthStoreBase.auth', context: context);

  @override
  Auth get auth {
    _$authAtom.reportRead();
    return super.auth;
  }

  @override
  set auth(Auth value) {
    _$authAtom.reportWrite(value, super.auth, () {
      super.auth = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('_AuthStoreBase.init', context: context);

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$getAuthAsyncAction =
      AsyncAction('_AuthStoreBase.getAuth', context: context);

  @override
  Future<void> getAuth(
      {required String username,
      required String password,
      required dynamic Function() success}) {
    return _$getAuthAsyncAction.run(() => super
        .getAuth(username: username, password: password, success: success));
  }

  late final _$logoutAsyncAction =
      AsyncAction('_AuthStoreBase.logout', context: context);

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isLogin: ${isLogin},
username: ${username},
token: ${token},
key: ${key},
errorMessage: ${errorMessage},
auth: ${auth}
    ''';
  }
}
