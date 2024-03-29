import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:shwelar/app_routes.dart';
import 'package:shwelar/clients/api_clients.dart';
import 'package:shwelar/module/auth/auth_module.dart';
import 'package:shwelar/module/auth/repositories/auth_repo_impl.dart';
import 'package:shwelar/module/auth/store/auth_store.dart';
import 'package:shwelar/module/home/respositories/home_repo_impl.dart';
import 'package:shwelar/module/home/store/game_store.dart';
import 'package:shwelar/module/not_found_widget.dart';
import 'package:shwelar/module/profile/repositories/profile_repo_impl.dart';
import 'package:shwelar/module/profile/store/profile_store.dart';
import 'package:shwelar/module/splash/splash_widget.dart';
import 'package:shwelar/services/api_service.dart';
import 'guards/auth_guards.dart';
import 'module/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => ###### ,
        Bind.singleton((i) => Logger(printer: PrettyPrinter(methodCount: 0))),
        Bind.singleton((i) => APIClient()),
        Bind.singleton((i) => APIService.create(i.get<APIClient>())),
        Bind.singleton((i) => GameStore()),
        Bind.singleton((i) => ProfileStore()),
        Bind.singleton((i) => ProfileRepositoryImpl.instance),
        Bind.singleton((i) => AuthStore()),
        Bind.singleton((i) => AuthRepositoryImpl.instance),
        Bind.singleton((i) => HomeRepositoryImpl.instance),
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
