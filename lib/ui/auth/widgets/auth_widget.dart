import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/utils/colors.dart';
import '../../../shared_widgets/dart_status_bar.dart';
import '../../../shared_widgets/shwelar_button.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  @override
  Widget build(BuildContext context) {
    return DartStatusBar(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(child: _getLoginForm()),
        ),
      ),
    );
  }

  InputDecoration _getInputDec(String label, [Widget suffixIcon]) {
    return InputDecoration(
      hintText: label,
      suffixIcon: suffixIcon,
      hoverColor: ShwelarColors.white,
      focusColor: ShwelarColors.white,
      hintStyle: TextStyle(color: ShwelarColors.white.withOpacity(0.7)),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: ShwelarColors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ShwelarColors.white),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ShwelarColors.white),
      ),
    );
  }

  Widget _getLoginForm() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(26),
      decoration: BoxDecoration(
          color: ShwelarColors.primaryColor,
          borderRadius: BorderRadius.circular(40)),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16),
            Text(
              'Welcome,\nSign in to Continue!',
              style: TextStyle(
                color: ShwelarColors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 24),
            ShwelarButton(
              text: "Sign in with Google",
              onTap: () {
                Modular.to.pushReplacementNamed("/google");
              },
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: RichText(
                text: TextSpan(
                  text: 'Forgot your password?',
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
