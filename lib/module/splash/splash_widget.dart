import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shwelar/app_routes.dart';
import 'package:shwelar/module/auth/auth_module.dart';
import 'package:shwelar/module/auth/store/auth_store.dart';
import 'package:shwelar/module/home/home_routes.dart';
import 'package:shwelar/module/profile/store/profile_store.dart';
import 'package:shwelar/utils/colors.dart';
import '../../utils/route_utils.dart';
import '../home/home_module.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  var disposers = [];

  final AuthStore _authStore = Modular.get<AuthStore>();
  final ProfileStore _profileStore = Modular.get<ProfileStore>();

  @override
  void initState() {
    super.initState();
    initS();
  }

  initS() async {
    await _authStore.init();
    Box box1 = await Hive.openBox('logindata');
    var test = box1.get('token');
    if (test != null) {
      _profileStore.getPlayerSurce(success: () {
        goToHomePage();
      });
    } else {
      RouteUtils.changeRoute<AuthModule>(AppRoutes.root, isReplace: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ShwelarColors.primaryColor,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/gif/splash_blackground.gif'),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/shwelar_logo.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                  bottom: 25,
                  left: 10,
                  right: 10,
                  child: Observer(builder: (context) {
                    if (_authStore.isLoading) {
                      return const SizedBox(
                        height: 45,
                        width: 45,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else if (_authStore.errorMessage.isNotEmpty) {
                      return Text(
                        _authStore.errorMessage,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      );
                    }
                    return const Text(
                      "Please wait...",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    );
                  }))
            ],
          ),
        ) //Center
        );
  }

  void goToHomePage() {
    Timer(const Duration(seconds: 2), () {
      if (_authStore.isLogin == false) {
        RouteUtils.changeRoute<AuthModule>(AppRoutes.root, isReplace: true);
      } else {
        RouteUtils.changeRoute<HomeModule>(HomeRoutes.root, isReplace: true);
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
