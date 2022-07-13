import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DartStatusBar extends StatelessWidget {
  final Widget child;
  const DartStatusBar({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
      child: child,
    );
  }
}
