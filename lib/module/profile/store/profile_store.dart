import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shwelar/module/profile/repositories/profile_repo.dart';

part 'profile_store.g.dart';

class ProfileStore = _ProfileStoreBase with _$ProfileStore;

abstract class _ProfileStoreBase with Store {
  //

  final ProfileRepository _repo = Modular.get<ProfileRepository>();

  @observable
  bool isLoading = false;

  @observable
  late String errorMessage = '';

  @observable
  String source = "";

  @action
  Future<void> getPlayerSurce({required Function() success}) async {
    try {
      isLoading = true;
      errorMessage = "";
      var data = await _repo.getPlayerSource();
      source = data.data!.playerScore!;
      success();
      isLoading = false;
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
