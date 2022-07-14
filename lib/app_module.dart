import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:shwelar/app_routes.dart';
import 'package:shwelar/module/auth/auth_module.dart';
import 'package:shwelar/module/not_found_widget.dart';
import 'package:shwelar/module/splash/splash_widget.dart';
import 'guards/auth_guards.dart';
import 'module/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => ###### ,
        Bind.singleton((i) => Logger(printer: PrettyPrinter(methodCount: 0))),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.root,
            child: (context, args) => const SplashWidget()),
        ModuleRoute(AppRoutes.home, module: HomeModule(), guards: [
          AuthGuard(),
        ]),
        ModuleRoute(AppRoutes.auth, module: AuthModule()),
        WildcardRoute(child: (context, args) => const NotFoundWidget()),
      ];
}
