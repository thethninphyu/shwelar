import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/ui/auth/auth_routes.dart';
import 'package:shwelar/ui/auth/widgets/auth_widget.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => ModularRouter.group(
        routes: [
          ModularRouter(AuthRoutes.auth, child: (_, __) => LoginWidget()),
        ],
      );

  static Inject get to => Inject<AuthModule>.of();
}
