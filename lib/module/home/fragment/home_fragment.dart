import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/module/game/game_module.dart';
import 'package:shwelar/module/game/game_routes.dart';
import 'package:shwelar/module/home/store/game_store.dart';
import 'package:shwelar/utils/route_utils.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
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
        return Center(
            child: Text(
          _gameStore.errorMessage,
          style: const TextStyle(
              color: Colors.red, fontWeight: FontWeight.w700, fontSize: 15),
        ));
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
                width: 155,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 10 / 15,
                      child: Image(
                        image: NetworkImage(data.image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
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
