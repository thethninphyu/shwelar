import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shwelar/module/auth/store/auth_store.dart';

import 'package:webview_flutter/webview_flutter.dart';

class GamePlayWiget extends StatefulWidget {
  const GamePlayWiget({Key? key}) : super(key: key);

  @override
  State<GamePlayWiget> createState() => _GamePlayWigetState();
}

class _GamePlayWigetState extends State<GamePlayWiget> {

   final AuthStore _authStore = Modular.get<AuthStore>();

   
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

// launcher/{game}/{token}
  @override
  Widget build(BuildContext context) {
    return  WebView(
      initialUrl:
          'https://game.kohtut.me/launcher/AncientRichesCasinoGM/${_authStore.token}',
      debuggingEnabled: true,
      javascriptMode: JavascriptMode.unrestricted,
      allowsInlineMediaPlayback: true,
    );
  }
}
