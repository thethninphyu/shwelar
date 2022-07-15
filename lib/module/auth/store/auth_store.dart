import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:shwelar/models/data/auth.dart';
import 'package:shwelar/module/auth/repositories/auth_repo.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  //

  final AuthRepository _repo = Modular.get<AuthRepository>();

  @observable
  bool isLoading = false;

  @observable
  bool isLogin = false;

  @observable
  String username = "";

  @observable
  String token = "";

  @observable
  String key = "";

  @observable
  late String errorMessage = '';

  @observable
  Auth auth = Auth();

  @action
  Future<void> init() async {
    Box box1 = await Hive.openBox('logindata');
    var test = box1.get('token');
    var ukey = box1.get('key');
    var uname = box1.get('username');
    if (test != null && test != "") {
      token = test;
      key = ukey;
      username = uname;
      isLogin = true;
    } else {
      isLogin = false;
    }
  }

  @action
  Future<void> getAuth(
      {required String name,
      required String password,
      required Function() success}) async {
    try {
      isLoading = true;
      errorMessage = "";
      var data = await _repo.getAuth(password: password, username: name);
      auth = data;
      token = data.token!;
      key = data.key!.keygen!;
      username = name;
      isLoading = false;
      isLogin = true;
      success();
    } on SocketException {
      isLoading = false;
      errorMessage = "Internet May Not Available";
    } catch (e) {
      isLoading = false;
      debugPrint('Error is ${e.toString()}');
      errorMessage = e.toString();
    }
  }

  @action
  Future<void> logout() async {
    token = "";
    isLogin = false;
    await _repo.logout();
  }
}
