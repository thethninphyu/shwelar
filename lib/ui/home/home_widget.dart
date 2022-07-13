import 'package:flutter/material.dart';
import 'package:shwelar/utils/route_utils.dart';
import '../../main_module/app_routes.dart';
import '../../utils/colors.dart';
import 'home_module.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: ShwelarColors.primaryColor,
      body: InkWell(
        onTap: (){
          RouteUtils.changeRoute<HomeModule>(AppRoutes.home, isReplace: true);
          },
        child: SizedBox(
        height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
        child: Image.asset(
                  'assets/images/home_screen.png',
                  fit: BoxFit.cover,
                ),  //Center
          ),
      )  //Center
    );
  }

}
