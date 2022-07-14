import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/app_routes.dart';
import 'package:shwelar/module/auth/auth_module.dart';
import 'package:shwelar/module/game/game_module.dart';
import 'package:shwelar/module/home/home_module.dart';
import 'package:shwelar/module/home/home_routes.dart';

class RouteUtils {
  static void _goNextPage(
      {required String routeName, Object? args, bool isReplace = false}) {
    if (args == null) {
      if (isReplace) {
        Modular.to.pushReplacementNamed(routeName);
      } else {
        Modular.to.pushNamed(routeName);
      }
    } else {
      if (isReplace) {
        Modular.to.pushReplacementNamed(routeName, arguments: args);
      } else {
        Modular.to.pushNamed(routeName, arguments: args);
      }
    }
  }

  static void changeModule(
      {required String routeName, Object? args, bool? isReplace}) {
    _goNextPage(
        routeName: routeName, args: args!, isReplace: isReplace ?? false);
  }

  static void pushNamedAndRemoveUntil(
      {required String nextRoute, required String untailRoute, Object? args}) {
    if (args == null) {
      Modular.to
          .pushNamedAndRemoveUntil(nextRoute, ModalRoute.withName(untailRoute));
    } else {
      Modular.to.pushNamedAndRemoveUntil(
          nextRoute, ModalRoute.withName(untailRoute),
          arguments: args);
    }
  }

  static void popAndPushName({required String nextRoute, Object? args}) {
    if (args == null) {
      Modular.to.popAndPushNamed(nextRoute);
    } else {
      Modular.to.popAndPushNamed(nextRoute, arguments: args);
    }
  }

  static void popUntil({required String routeName}) {
    Modular.to.popUntil(ModalRoute.withName(routeName));
  }

  static void changeRoute<M extends Module>(String route,
     {Object? args, bool? isReplace, bool? isReplaceAll}) {
    String tempRoute = "";
    switch (M) {
      case AuthModule:
        tempRoute = AppRoutes.auth;
        break;
      case HomeModule:
        tempRoute = AppRoutes.home;
        break;
      case GameModule:
        tempRoute = AppRoutes.home + HomeRoutes.game;
        break;
    }
    _goNextPage(
        routeName: "$tempRoute$route",
        args: args,
        isReplace: isReplace ?? false);
  }
}
