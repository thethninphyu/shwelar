import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/app_widget.dart';
import 'package:shwelar/guards/auth_guards.dart';
import 'package:shwelar/ui/splash/splash_widget.dart';

import '../ui/auth/auth_module.dart';
import '../ui/home/home_module.dart';
import 'app_routes.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => const AppWidget();

  @override
  List<ModularRouter> get routers => ModularRouter.group(
    guards: [AuthGuard()],
    routes: [
        ModularRouter(AppRoutes.root, child: (_, __) =>  SplashWidget()),
        ModularRouter(AppRoutes.home, module: HomeModule()),
        ModularRouter(AppRoutes.auth, module: AuthModule()),
      ]);
}
