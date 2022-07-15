import 'package:flutter/material.dart';
import 'package:shwelar/app_routes.dart';
import 'package:shwelar/custom/shwelar_button.dart';
import 'package:shwelar/module/auth/auth_module.dart';
import 'package:shwelar/module/auth/auth_routes.dart';
import 'package:shwelar/module/home/home_module.dart';
import 'package:shwelar/utils/colors.dart';
import 'package:shwelar/utils/route_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shwelar/utils/strings.dart';

import '../../home/home_routes.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  bool isClickedStartPlaying = false;

  late TextEditingController userNameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    userNameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShwelarColors.primaryColor,
      body: Stack(children: [
        Opacity(
          opacity: 0.4,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/slbg.jpeg',
              fit: BoxFit.cover,
            ), //Center
          ),
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/shwelar_dealer.png',
                  fit: BoxFit.cover,
                ), //Center
              ),
            ),
            Expanded(
              child: !isClickedStartPlaying
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/shwelar_splash.png',
                            fit: BoxFit.cover,
                          ),
                          Text(
                            StringUtils.LimitlessCasinoExperience,
                            style: GoogleFonts.sansita(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: ShwelarButton(
                              onTap: () {
                                setState(() {
                                  isClickedStartPlaying =
                                      !isClickedStartPlaying;
                                });
                              },
                              text: StringUtils.StartPlaying,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            StringUtils.RightsReserved,
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  : SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                StringUtils.AccountLogin,
                                style: GoogleFonts.saira(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            TextField(
                              style: GoogleFonts.saira(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                              controller: userNameController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.grey,
                                          style: BorderStyle.solid)),
                                  prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                      size: 32,
                                    ),
                                  ),
                                  hintText: StringUtils.UserName,
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 5,
                                          color: Colors.red,
                                          style: BorderStyle.solid))),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              style: GoogleFonts.saira(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                              controller: passwordController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.grey,
                                          style: BorderStyle.solid)),
                                  prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Icon(
                                      Icons.key,
                                      color: Colors.grey,
                                      size: 32,
                                    ),
                                  ),
                                  hintText: StringUtils.Password,
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 5,
                                          color: Colors.white,
                                          style: BorderStyle.solid))),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                StringUtils.ForgotPassword,
                                style: GoogleFonts.saira(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ShwelarButton(
                              text: StringUtils.EnterGame,
                              onTap: () {
                                RouteUtils.changeRoute<HomeModule>(
                                    HomeRoutes.root,
                                    isReplace: true);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        )
      ]), //Center
    );
  }
}
