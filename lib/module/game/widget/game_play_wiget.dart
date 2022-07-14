import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shwelar/config/config.dart';

import 'package:webview_flutter/webview_flutter.dart';

class GamePlayWiget extends StatefulWidget {
  const GamePlayWiget({Key? key}) : super(key: key);

  @override
  State<GamePlayWiget> createState() => _GamePlayWigetState();
}

class _GamePlayWigetState extends State<GamePlayWiget> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

// launcher/{game}/{token}
  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl:
          'https://game.kohtut.me/launcher/AncientRichesCasinoGM/${Config.token}',
      debuggingEnabled: true,
      javascriptMode: JavascriptMode.unrestricted,
      allowsInlineMediaPlayback: true,
    );
  }
}
