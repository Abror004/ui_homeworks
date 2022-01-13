import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'demo_1.dart';

class Demo_Animation_Page extends StatefulWidget {
  static const String id = "Demo_Animation_Page";

  @override
  _Demo_Animation_PageState createState() => _Demo_Animation_PageState();
}

class _Demo_Animation_PageState extends State<Demo_Animation_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Lottie.asset("assets/anims/perfect-loop-loading.json"),
            MaterialButton(
              height: 80,
              minWidth: 200,
              color: Colors.blue,
              child: Text(
                "Join",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Demo1.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
