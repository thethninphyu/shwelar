import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/module/home/fragment/draw_fragment.dart';
import 'package:shwelar/module/home/fragment/fishing_fragment.dart';
import 'package:shwelar/module/home/fragment/home_fragment.dart';
import 'package:shwelar/module/home/fragment/routte_fragment.dart';
import 'package:shwelar/module/home/fragment/slot_fragment.dart';
import 'package:shwelar/module/home/fragment/table_fragment.dart';
import 'package:shwelar/module/home/widget/game_list.dart';
import 'package:shwelar/module/home/widget/shwelar_bottom_navigation_bar_item.dart';
import 'package:shwelar/module/profile/store/profile_store.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final ProfileStore _profileStore = Modular.get<ProfileStore>();

  int pageIndex = 0;

  final pages = [
    HomeFragment(),
    TableFragment(),
    SlotFragment(),
    DrawFragment(),
    FishingFragment(),
    RoutteFragment(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(
                image: Image.asset("assets/images/background/Image.png").image,
                fit: BoxFit.fill),
          ),
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Icon(Icons.person),
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
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20, top: 5, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //
                          Row(
                            children: [
                              Container(
                                  width: 28,
                                  height: 28,
                                  margin: const EdgeInsets.only(
                                      left: 3, right: 3, top: 5, bottom: 5),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/icon/chip.png"),
                                        fit: BoxFit.cover),
                                  )),
                              Observer(builder: (context) {
                                return Text(
                                  _profileStore.source,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                );
                              }),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: pages[pageIndex],
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
                    shwelarBottomNavigationBarItem(
                        icon: Icon(
                          Icons.home_filled,
                          color: (pageIndex == 0) ? Colors.white : Colors.grey,
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
                            'assets/icon/cards.png',
                          ),
                          color: (pageIndex == 1) ? Colors.white : Colors.grey,
                        ),
                        isActive: pageIndex == 1,
                        name: "TABLE",
                        onTap: () {
                          setState(() {
                            pageIndex = 1;
                          });
                        }),
                    shwelarBottomNavigationBarItem(
                        icon: ImageIcon(
                          const AssetImage(
                            'assets/icon/slot.png',
                          ),
                          color: (pageIndex == 2) ? Colors.white : Colors.grey,
                        ),
                        isActive: pageIndex == 2,
                        name: "SLOT",
                        onTap: () {
                          setState(() {
                            pageIndex = 2;
                          });
                        }),
                    shwelarBottomNavigationBarItem(
                        icon: ImageIcon(
                          const AssetImage('assets/icon/dice.png'),
                          color: (pageIndex == 3) ? Colors.white : Colors.grey,
                        ),
                        name: "DRAW",
                        isActive: pageIndex == 3,
                        onTap: () {
                          setState(() {
                            pageIndex = 3;
                          });
                        }),
                    shwelarBottomNavigationBarItem(
                        icon: ImageIcon(
                          const AssetImage('assets/icon/fish.png'),
                          color: (pageIndex == 4) ? Colors.white : Colors.grey,
                        ),
                        name: "FISHING",
                        isActive: pageIndex == 4,
                        onTap: () {
                          setState(() {
                            pageIndex = 4;
                          });
                        }),
                    shwelarBottomNavigationBarItem(
                        icon: ImageIcon(
                          const AssetImage('assets/icon/roule.png'),
                          color: (pageIndex == 5) ? Colors.white : Colors.grey,
                        ),
                        name: "ROUTTE",
                        isActive: pageIndex == 5,
                        onTap: () {
                          setState(() {
                            pageIndex = 5;
                          });
                        }),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
