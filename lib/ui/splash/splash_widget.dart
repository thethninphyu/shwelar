import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../main_module/app_routes.dart';
import '../../utils/route_utils.dart';
import '../home/home_module.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  var disposers = [];

  @override
  void initState() {
    super.initState();
    goToHomePage();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/images/splash_image.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height),
    );
  }

  void goToHomePage() {
    Permission.camera.request().then((permission) async {
      if (permission.isGranted) {
        try {
          RouteUtils.changeRoute<HomeModule>(AppRoutes.home, isReplace: true);
        } catch (e) {}
      } else {
        openAppSettings();
      }
    });
  }

  @override
  void dispose() {
    for (var element in disposers) {
      element();
    }
    super.dispose();
  }
}
