import 'package:flutter_modular/flutter_modular.dart';

import '../main_module/app_module.dart';
import '../ui/auth/auth_routes.dart';
import '../utils/route_utils.dart'; 
 
class AuthGuard extends RouteGuard { 
  @override 
  bool canActivate(String url) { 
    if (url == '/auth' || url == "/") { 
      return true; 
    } else { 
      return false;
    } 
  } 
 
  @override 
  List<GuardExecutor> get executors => [GoToAuthGuard()]; 
} 
 
class GoToAuthGuard extends GuardExecutor { 
  @override 
  void onGuarded(String path, {bool isActive}) { 
    if (!isActive) { 
      RouteUtils.changeRoute<AppModule>(AuthRoutes.auth, args: path, isReplace: true); 
    } 
  } 
}