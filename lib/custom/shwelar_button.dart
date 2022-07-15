import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShwelarButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const ShwelarButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        width: 300,
        height: 48,
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
              borderRadius: BorderRadius.circular(24),
              side: const BorderSide(
                style: BorderStyle.solid,
                width: 2,
                color: Color.fromARGB(255, 113, 77, 255),
              ),
            )),
        child: Text(
          text,
          style: GoogleFonts.saira(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
