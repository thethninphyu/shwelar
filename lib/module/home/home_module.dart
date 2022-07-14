import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/module/game/game_module.dart';
import 'package:shwelar/module/home/home_routes.dart';
import 'widget/home_widget.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => ###### ,
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(HomeRoutes.root, child: (_, __) => const HomeWidget()),
        ModuleRoute(HomeRoutes.game, module: GameModule()),
      ];
}
