import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shwelar/ui/auth/widgets/auth_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    goToHomePage();
    super.initState();
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
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const AuthWidget()));
    //RouteUtils.changeRoute<HomeModule>(AppRoutes.home, isReplace: true);
  }
}
