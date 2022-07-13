import 'package:flutter_modular/flutter_modular.dart';
import '../../guards/auth_guards.dart';
import '../../main_module/app_routes.dart';
import 'home_widget.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => ModularRouter.group(
        guards: [AuthGuard()],
        routes: [
          ModularRouter(AppRoutes.home, child: (_, __) => const HomeWidget()),
        ],
      );

  static Inject get to => Inject<HomeModule>.of();
}
