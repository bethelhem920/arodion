import 'dart:io';

import 'package:arodion/src/screens/home_screen.dart';
import 'package:arodion/src/screens/shelf.dart';
import 'package:arodion/src/screens/welcome_screen.dart';
import 'package:arodion/src/utils/theme.dart';
import 'package:arodion/src/widget/bottomnv.dart';

import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const App());

  WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    if (Platform.isAndroid) {
      await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    }
  });
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:
          ThemeData(colorSchemeSeed: Colors.white, brightness: Brightness.light
              /* dark theme settings */
              ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const bottomnav(),
    );
  }
}
