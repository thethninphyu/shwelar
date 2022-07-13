import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shwelar/utils/colors.dart';

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
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShwelarColors.primaryColor,
      body: SizedBox(
      height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
      child: Image.asset(
                'assets/images/splash_screen.png',
                fit: BoxFit.cover,
              ),  //Center
    )  //Center
    );
  }

  void goToHomePage() {
    Timer(const Duration(seconds: 5),
          ()=>RouteUtils.changeRoute<HomeModule>(AppRoutes.home, isReplace: true)
         );
  }

  @override
  void dispose() {
    for (var element in disposers) {
      element();
    }
    super.dispose();
  }
}
