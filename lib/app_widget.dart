import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/utils/colors.dart';
import 'package:shwelar/utils/strings.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: StringUtils.AppName,
       theme: ThemeData.light().copyWith(
        useMaterial3: true,
          primaryColor: ShwelarColors.primaryColor,
          scaffoldBackgroundColor: ShwelarColors.scaffoldBKColor,
          textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Roboto')),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}
