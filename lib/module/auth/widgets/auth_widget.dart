import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/app_routes.dart';
import 'package:shwelar/custom/shwelar_button.dart';
import 'package:shwelar/module/auth/auth_module.dart';
import 'package:shwelar/module/auth/auth_routes.dart';
import 'package:shwelar/module/auth/store/auth_store.dart';
import 'package:shwelar/module/home/home_module.dart';
import 'package:shwelar/module/profile/store/profile_store.dart';
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
  final AuthStore _authStore = Modular.get<AuthStore>();
  final ProfileStore _profileStore = Modular.get<ProfileStore>();

  bool isClickedStartPlaying = false;

  final _formKey = GlobalKey<FormState>();

  late TextEditingController userNameController;
  late TextEditingController passwordController;

  final FocusNode _userNameFocus = FocusNode();
  final FocusNode _pwdFocus = FocusNode();

  bool _obscureText = true;
  bool isVisibleKeyboard = false;

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
              child: Container(
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.only(top: kToolbarHeight),
                child: Image.asset(
                  'assets/images/shwelar_dealer.png',
                  fit: BoxFit.contain,
                ), //Center
              ),
            ),
            Expanded(
              child: SafeArea(
                child: !isClickedStartPlaying
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                      )
                    : SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
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
                                SizedBox(
                                  // height: 55,
                                  child: TextFormField(
                                    style: GoogleFonts.saira(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                    ),
                                    focusNode: _userNameFocus,
                                    controller: userNameController,
                                    textInputAction: TextInputAction.next,
                                    textAlignVertical: TextAlignVertical.center,
                                    onEditingComplete: () =>
                                        _userNameFocus.unfocus(),
                                    keyboardType: TextInputType.text,
                                    onFieldSubmitted: (term) =>
                                        _fieldFocusChange(
                                            context, _userNameFocus, _pwdFocus),
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(0),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Colors.grey,
                                              style: BorderStyle.solid)),
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
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
                                              style: BorderStyle.solid)),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter username ';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  // height: 55,
                                  child: TextFormField(
                                    style: GoogleFonts.saira(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                    ),
                                    focusNode: _pwdFocus,
                                    controller: passwordController,
                                    textInputAction: TextInputAction.done,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: _obscureText,
                                    textAlignVertical: TextAlignVertical.center,
                                    onEditingComplete: () =>
                                        _pwdFocus.unfocus(),
                                    onFieldSubmitted: (t) =>
                                        _pwdFocus.unfocus(),
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.all(0),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Colors.grey,
                                                style: BorderStyle.solid)),
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
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
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter password';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                ShwelarButton(
                                  text: StringUtils.EnterGame,
                                  onTap: () {
                                    final FormState? form =
                                        _formKey.currentState;
                                    if (_formKey.currentState!.validate()) {
                                      form!.save();
                                      _authStore.getAuth(
                                          name: userNameController.text,
                                          password: passwordController.text,
                                          success: () {
                                            _profileStore.getPlayerSurce(
                                                success: () {
                                              RouteUtils.changeRoute<
                                                      HomeModule>(
                                                  HomeRoutes.root,
                                                  isReplace: true);
                                            });
                                          });
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
              ),
            ),
          ],
        )
      ]),
    );
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
