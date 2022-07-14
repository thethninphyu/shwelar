import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/module/auth/auth_routes.dart';
import 'package:shwelar/module/auth/widgets/auth_widget.dart';
import 'package:shwelar/module/auth/widgets/login_widget.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => ###### ,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AuthRoutes.root,
            child: (context, args) => const AuthWidget()),
        ChildRoute(AuthRoutes.login,
            child: (context, args) => const LoginWidget()),
        // ChildRoute(AuthRoutes.register,
        //     child: (context, args) => const RegisterWidget()),
      ];
}
