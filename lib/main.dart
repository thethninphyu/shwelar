import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shwelar/config/type_registrars.dart';

import 'app_module.dart';
import 'app_widget.dart';

late Directory appDocsDir = Directory('');
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  registerAdapters();
  appDocsDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocsDir.path);
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(ModularApp(module: AppModule(), child: const AppWidget()));
  });
}

// For Intel cpu
// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

// For ARM cpu
// fvm flutter run | grep -v "Error retrieving thread information"
// Fvm build runner gen
// fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs
// fvm flutter pub run flutter_launcher_icons:main


// pod deintegratfvm e --verbose 
// arch -x86_64 pod install
// pod install --verbose
