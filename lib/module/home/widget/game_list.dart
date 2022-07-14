import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/module/game/game_module.dart';
import 'package:shwelar/module/game/game_routes.dart';
import 'package:shwelar/module/home/store/game_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shwelar/utils/route_utils.dart';

class GameListWidget extends StatefulWidget {
  GameListWidget({Key? key}) : super(key: key);

  @override
  State<GameListWidget> createState() => _GameListWidgetState();
}

class _GameListWidgetState extends State<GameListWidget> {
  final GameStore _gameStore = Modular.get<GameStore>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _gameStore.getGame();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (_gameStore.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (_gameStore.errorMessage.isNotEmpty) {
        return Text(_gameStore.errorMessage);
      }
      return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _gameStore.game.length,
          itemBuilder: (_, i) {
            var data = _gameStore.game[i];
            return InkWell(
              onTap: (() =>
                  RouteUtils.changeRoute<GameModule>(GameRoutes.play)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.all(5),
                width: 132,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 9 / 16,
                      child: Image(
                        image: NetworkImage(data.image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      data.title!,
                      maxLines: 1,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            );
          });
    });
  }
}
