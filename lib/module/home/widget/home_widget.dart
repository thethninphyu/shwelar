import 'package:flutter/material.dart';
import 'package:shwelar/module/home/widget/game_list.dart';
import 'package:shwelar/module/home/widget/shwelar_bottom_navigation_bar_item.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int pageIndex = 0;

  final pages = [
    GameListWidget(),
    GameListWidget(),
    GameListWidget(),
    GameListWidget(),
    GameListWidget(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
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
            shwelarBottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: (pageIndex == 0) ? Colors.white: Colors.grey,
                ),
                name: "HOME",
                isActive: pageIndex == 0,
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                }),
            shwelarBottomNavigationBarItem(
                icon: ImageIcon(
                  const AssetImage(
                    'assets/icon/slot.png',
                  ),
                  color: (pageIndex == 1) ? Colors.white: Colors.grey,
                ),
                isActive: pageIndex == 1,
                name: "SLOT",
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                }),
            shwelarBottomNavigationBarItem(
                icon: ImageIcon(
                  const AssetImage('assets/icon/dice.png'),
                  color: (pageIndex == 2) ? Colors.white: Colors.grey,
                ),
                name: "DRAW",
                isActive: pageIndex == 2,
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                }),
            shwelarBottomNavigationBarItem(
                icon: ImageIcon(
                  const AssetImage('assets/icon/fish.png'),
                  color: (pageIndex == 3) ? Colors.white: Colors.grey,
                ),
                name: "FISHING",
                isActive: pageIndex == 3,
                onTap: () {
                  setState(() {
                    pageIndex = 3;
                  });
                }),
            shwelarBottomNavigationBarItem(
                icon: ImageIcon(
                  const AssetImage('assets/icon/roule.png'),
                  color: (pageIndex == 4) ? Colors.white: Colors.grey,
                ),
                name: "ROUTTE",
                isActive: pageIndex == 4,
                onTap: () {
                  setState(() {
                    pageIndex = 4;
                  });
                }),
          ],
        ),
      ),
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
                child: pages[pageIndex],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
