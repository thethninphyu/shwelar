import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/module/game/game_routes.dart';
import 'package:shwelar/module/game/widget/game_play_wiget.dart';

class GameModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => ###### ,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(GameRoutes.play, child: (context, args) => GamePlayWiget()),
      ];
}
