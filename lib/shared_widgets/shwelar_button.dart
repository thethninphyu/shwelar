import 'package:flutter/material.dart';

class ShwelarButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Function onTap;
  final Color backgroundColor;
  final Color textColor;
  final double textSize;
  final Widget leading;
  final Widget tailing;
  final BorderRadius borderRadius;
  const ShwelarButton({
    Key key,
    @required this.text,
    @required this.onTap,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.textSize,
    this.leading,
    this.tailing,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width ?? MediaQuery.of(context).size.width,
      height: height ?? 48,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(100.0),
      ),
      color: backgroundColor ?? Colors.white,
      textColor: textColor ?? const Color(0xFF424242),
      disabledTextColor:
          (textColor ?? const Color(0xFF424242)).withOpacity(0.6),
      disabledColor: (backgroundColor ?? Colors.white).withAlpha(200),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          leading ?? const SizedBox(),
          Text(
            text.toUpperCase(),
            style: TextStyle(fontSize: textSize ?? 14),
          ),
          tailing ?? const SizedBox(),
        ],
      ),
    );
  }
}
