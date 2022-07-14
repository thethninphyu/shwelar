import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shwelar/models/data/game.dart';
import 'package:shwelar/module/home/respositories/home_repo.dart';

part 'game_store.g.dart';

class GameStore = _GameStoreBase with _$GameStore;

abstract class _GameStoreBase with Store {
  //

  final HomeRepository _repo = Modular.get<HomeRepository>();

  @observable
  bool isLoading = false;

  @observable
  late String errorMessage = '';

  @observable
  ObservableList<Game> game = ObservableList<Game>();

  @action
  Future<void> getGame() async {
    try {
      isLoading = true;
      errorMessage = "";
      game.clear();
      var data = await _repo.getGame();
      for (var element in data.data!) {
        game.add(element);
      }
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
