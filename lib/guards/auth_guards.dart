import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/app_routes.dart';

// class AuthGuard extends RouteGuard {
//   @override
//   bool canActivate(String url) {
//     if (url == '/auth' || url == "/") {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   @override
//   List<GuardExecutor> get executors => [GoToAuthGuard()];
// }

// class GoToAuthGuard extends GuardExecutor {
//   @override
//   void onGuarded(String path, {bool isActive}) {
//     if (!isActive) {
//       RouteUtils.changeRoute<AppModule>(AuthRoutes.auth, args: path, isReplace: true);
//     }
//   }
// }

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: AppRoutes.auth);

  @override
  Future<bool> canActivate(String path, ModularRoute router) {
    // return Modular.get<AuthStore>().isLogged;
    return Future.value(true);
  }
}
