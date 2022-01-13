import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_homeworks/shorts_videos/shorts_videos.dart';
import 'package:ui_homeworks/ux_project1/ux_project.dart';

import 'demo_Animation/demo_Animation.dart';

class Home_Page extends StatefulWidget {
  static const String id = "Home_Page";

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: MaterialButton(
                //padding: EdgeInsets.all(20),
                height: 40,
                minWidth: 300,

                child: Text("UX_Project_Page"),
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  Navigator.pushNamed(context, UX_Project_Page.id);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: MaterialButton(
                //padding: EdgeInsets.all(20),
                height: 40,
                minWidth: 300,

                child: Text("Demo_Animation_Page"),
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  Navigator.pushNamed(context, Demo_Animation_Page.id);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: MaterialButton(
                //padding: EdgeInsets.all(20),
                height: 40,
                minWidth: 300,

                child: Text("Shorts_Videos_Page"),
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  Navigator.pushNamed(context, Shorts_Videos_Page.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
