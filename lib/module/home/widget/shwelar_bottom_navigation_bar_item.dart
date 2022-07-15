import 'package:flutter/material.dart';

Widget shwelarBottomNavigationBarItem({
  required String name,
  required Widget icon,
  required Function() onTap,
  required bool isActive,
}) {
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: isActive
                ? const DecorationImage(
                    image: AssetImage(
                      "assets/images/background/tab_bg_shadow.png",
                    ),
                    fit: BoxFit.fill)
                : null),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: 5,
            ),
            Text(
              name,
              style: TextStyle(
                  color: isActive ? Colors.white : Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    ),
  );
}
