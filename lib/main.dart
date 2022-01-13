import 'package:flutter/material.dart';
import 'package:ui_homeworks/home_Page.dart';
import 'package:ui_homeworks/shorts_videos/shorts_videos.dart';
import 'package:ui_homeworks/ux_project1/ux_project.dart';
import 'package:ui_homeworks/wifi_ui_page.dart';

import 'demo_Animation/demo_1.dart';
import 'demo_Animation/demo_Animation.dart';

void main() {
  runApp(MyApp());
  // runApp(FlutterWifiIoT());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WifiUIPage(),
      home: Home_Page(),
      routes: {
        WifiUIPage.id: (context) => WifiUIPage(),
        UX_Project_Page.id: (context) => UX_Project_Page(),
        Demo_Animation_Page.id: (context) => Demo_Animation_Page(),
        Demo1.id: (context) => Demo1(),
        Shorts_Videos_Page.id: (context) => Shorts_Videos_Page(),
      },
    );
  }
}
