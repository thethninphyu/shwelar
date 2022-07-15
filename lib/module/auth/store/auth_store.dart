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
  String token = "";

  @observable
  String key = "";

  @observable
  late String errorMessage = '';

  @observable
  Auth auth = Auth();

  @action
  Future<void> getAuth({required Function() success}) async {
    try {
      isLoading = true;
      errorMessage = "";
      var data = await _repo.getAuth();
      auth = data;
      token = data.token!;
      key = data.key!.keygen!;
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
}
