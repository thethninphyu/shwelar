import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shwelar/custom/shwelar_button.dart';
import 'package:shwelar/module/home/home_module.dart';
import 'package:shwelar/module/home/home_routes.dart';
import 'package:shwelar/utils/colors.dart';
import 'package:shwelar/utils/route_utils.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  FocusNode myFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  StreamSubscription? subscription;
  final FocusNode _userNameFocus = FocusNode();
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _userController = TextEditingController();
  final _formKeyforPassword = GlobalKey<FormState>();
  final FocusNode _passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    subscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/slbg.jpeg'),
                    fit: BoxFit.cover)),
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 30, 40),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          top: const BorderSide(
                              width: 5,
                              color: Colors.yellow,
                              style: BorderStyle.solid),
                          left: BorderSide(
                              width: 5, color: Colors.amber.shade500),
                          right: BorderSide(width: 5, color: Colors.amber),
                          bottom: BorderSide(
                              width: 5,
                              color: Colors.amber.shade900,
                              style: BorderStyle.solid)),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff21173B),
                          Color(0xff3B1872),
                          Color(0xff171725)
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Account Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.grey,
                                        style: BorderStyle.solid)),
                                prefixIcon:
                                    Icon(Icons.person, color: Colors.grey),
                                hintText: 'Name',
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
                          const TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.grey,
                                        style: BorderStyle.solid)),
                                prefixIcon: Icon(
                                  Icons.key,
                                  color: Colors.grey,
                                ),
                                hintText: 'Password',
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
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              RouteUtils.changeRoute<HomeModule>(
                                  HomeRoutes.root,
                                  isReplace: true);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(4.0),
                              padding: const EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              width: 300,
                              height: 55,
                              // ignore: sort_child_properties_last
                              child: const Text(
                                "ENTER GAME",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: ShapeDecoration(
                                  shadows: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 20, 12, 38),
                                      spreadRadius: 5,
                                      blurRadius: 15,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromARGB(225, 113, 84, 195),
                                        Color.fromARGB(255, 58, 36, 123)
                                      ]),
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                      style: BorderStyle.solid,
                                      width: 2,
                                      color: Color.fromARGB(255, 113, 77, 255),
                                    ),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 18,
                    top: 5,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.orange),
                          color: Colors.orange.shade300,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: const Icon(
                        Icons.clear_outlined,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
