import 'package:flutter/material.dart';
import 'package:shwelar/module/home/widget/game_list.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
              image: Image.asset("assets/images/background/Image.png").image,
              fit: BoxFit.fill),
          Column(
            children: [
              Container(
                height: 55,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color(0xFF3E3384),
                      Color(0xFF211263),
                    ],
                    radius: 1.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                        ),
                        const Text(
                          "Ko Htut",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GameListWidget(),
              ),
              Container(
                height: 55,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    // center: Alignment(-0.8, -0.6),
                    colors: [Color(0xFF3E3384), Color(0xFF211263)],
                    radius: 1.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //
                    _btmtabitem(
                        icon: const Icon(
                          Icons.home_filled,
                          color: Colors.white,
                        ),
                        name: "HOME",
                        isActive: true,
                        onTap: () {
                          //
                        }),
                    _btmtabitem(
                        icon: const ImageIcon(
                          AssetImage(
                            'assets/icon/slot.png',
                          ),
                          color: Colors.grey,
                        ),
                        isActive: false,
                        name: "SLOT",
                        onTap: () {
                          //
                        }),
                    _btmtabitem(
                        icon: const ImageIcon(
                          AssetImage('assets/icon/dice.png'),
                          color: Colors.grey,
                        ),
                        name: "DRAW",
                        isActive: false,
                        onTap: () {
                          //
                        }),
                    _btmtabitem(
                        icon: const ImageIcon(
                          AssetImage('assets/icon/fish.png'),
                          color: Colors.grey,
                        ),
                        name: "FISHING",
                        isActive: false,
                        onTap: () {
                          //
                        }),
                    _btmtabitem(
                        icon: const ImageIcon(
                          AssetImage('assets/icon/roule.png'),
                          color: Colors.grey,
                        ),
                        name: "ROUTTE",
                        isActive: false,
                        onTap: () {
                          //
                        }),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _btmtabitem({
    required String name,
    required Widget icon,
    required Function onTap,
    required bool isActive,
  }) {
    return Expanded(
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
    );
  }
}
