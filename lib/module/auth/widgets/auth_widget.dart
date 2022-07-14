import 'package:flutter/material.dart';
import 'package:shwelar/app_routes.dart';
import 'package:shwelar/module/auth/auth_module.dart';
import 'package:shwelar/module/auth/auth_routes.dart';
import 'package:shwelar/module/home/home_module.dart';
import 'package:shwelar/utils/colors.dart';
import 'package:shwelar/utils/route_utils.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ShwelarColors.primaryColor,
        body: InkWell(
          onTap: () {
            RouteUtils.changeRoute<AuthModule>(AuthRoutes.login,
                isReplace: true);
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/authhome_screen.png',
              fit: BoxFit.cover,
            ), //Center
          ),
        ) //Center
        );
  }
}
