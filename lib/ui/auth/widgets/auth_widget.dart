import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shwelar/shared_widgets/shwelar_button.dart';
import 'package:shwelar/utils/colors.dart';

class LoginWidget extends StatefulWidget {
  final String routePath;
  const LoginWidget({Key key, @required this.routePath}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  FocusNode myFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  StreamSubscription subscription;
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
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShwelarColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/home_screen.png'),
                    fit: BoxFit.fill)),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset('assets/images/home_screen.png'),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      controller: _userController,
                      style: const TextStyle(color: Colors.white),
                      focusNode: _userNameFocus,
                      onFieldSubmitted: (_) => _fieldFocusChange(
                          context, _userNameFocus, _passwordFocus),
                      decoration: InputDecoration(
                        labelText: "Username",
                        focusColor: Colors.white,
                        hoverColor: Colors.white,
                        labelStyle: const TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: ShwelarColors.primaryColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: ShwelarColors.primaryColor,
                            width: 2.0,
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "လျိုဝှက်နံပါတ် ရိုက်ထည့်ရန်",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _passwordForm(),
                  const SizedBox(
                    height: 50,
                  ),
                  ShwelarButton(
                    text: "ရှေ့ဆက်ရန် နှိပ်ပါ",
                    textColor: Colors.black,
                    backgroundColor: ShwelarColors.primaryColor,
                    onTap: () {
                      //to do login
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  Widget _passwordForm() {
    return Form(
      key: _formKeyforPassword,
      child: GestureDetector(
        onLongPress: () {},
      ),
    );
  }
}
