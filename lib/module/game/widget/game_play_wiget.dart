import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/module/auth/store/auth_store.dart';
import 'package:shwelar/module/home/home_module.dart';
import 'package:shwelar/module/home/home_routes.dart';
import 'package:shwelar/module/profile/store/profile_store.dart';
import 'package:shwelar/utils/route_utils.dart';

import 'package:webview_flutter/webview_flutter.dart';

class GamePlayWiget extends StatefulWidget {
  const GamePlayWiget({Key? key}) : super(key: key);

  @override
  State<GamePlayWiget> createState() => _GamePlayWigetState();
}

class _GamePlayWigetState extends State<GamePlayWiget> {
  final AuthStore _authStore = Modular.get<AuthStore>();

  final ProfileStore _profileStore = Modular.get<ProfileStore>();

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

// launcher/{game}/{token}
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: WebView(
            initialUrl:
                'https://game.kohtut.me/launcher/AncientRichesCasinoGM/${_authStore.token}',
            debuggingEnabled: true,
            javascriptMode: JavascriptMode.unrestricted,
            allowsInlineMediaPlayback: true,
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: GestureDetector(
            onTap: (() {
              _profileStore.getPlayerSurce(success: () {
                //
              });
              Navigator.pop(context);
            }),
            child: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/icon/close.png")),
          ),
        ),
      ],
    );
  }
}
