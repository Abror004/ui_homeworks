import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Demo1 extends StatefulWidget {
  static const String id = "Demo1";

  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 250,
                      width: 250,
                      alignment: Alignment.center,
                      child: Lottie.asset(
                        "assets/anims/telegram-icon.json",
                        repeat: false,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Telegram X",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "\nThe world's fastest messaging app.",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "it is free and secure.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 250,
                      width: 250,
                      alignment: Alignment.center,
                      child: Lottie.asset("assets/anims/speedometer.json",
                          repeat: false),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Fast",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "\nTelegram delivers messages",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "faster than any other application",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 400,
                      width: 400,
                      alignment: Alignment.center,
                      child: Lottie.asset(
                          "assets/anims/gift-reward-animation.json",
                          repeat: false),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Free",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "\nTelegram is free forever.No ads.",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "No subscration fees.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 400,
                      width: 400,
                      alignment: Alignment.center,
                      child: Lottie.asset(
                          "assets/anims/infinity-spaghetti-loader.json",
                          repeat: false),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Powerful",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "\nTelegram has no limits no",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "the size of your media chats.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 200,
                      width: 200,
                      alignment: Alignment.center,
                      child: Lottie.asset(
                          "assets/anims/security-check-mark.json",
                          repeat: false),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Secure",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "\nTelegram keeps your messages",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "safe from hacker attaks.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 300,
                      width: 300,
                      alignment: Alignment.center,
                      child: Lottie.asset("assets/anims/cloud-transfer.json",
                          repeat: false),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Cloud-Based",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "\nTelegram keeps your messages",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "safe from hacker attaks.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor:
                            _selectedIndex == 0 ? Colors.black : Colors.black38,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 0;
                            });
                            _pageController.animateToPage(_selectedIndex,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.fastOutSlowIn);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor:
                            _selectedIndex == 1 ? Colors.black : Colors.black38,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                            _pageController.animateToPage(_selectedIndex,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.fastOutSlowIn);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor:
                            _selectedIndex == 2 ? Colors.black : Colors.black38,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 2;
                            });
                            _pageController.animateToPage(_selectedIndex,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.fastOutSlowIn);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor:
                            _selectedIndex == 3 ? Colors.black : Colors.black38,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 3;
                            });
                            _pageController.animateToPage(_selectedIndex,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.fastOutSlowIn);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor:
                            _selectedIndex == 4 ? Colors.black : Colors.black38,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 4;
                            });
                            _pageController.animateToPage(_selectedIndex,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.fastOutSlowIn);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor:
                            _selectedIndex == 5 ? Colors.black : Colors.black38,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 5;
                            });
                            _pageController.animateToPage(_selectedIndex,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.fastOutSlowIn);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  child: Text(
                    "Start Messaging",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex == 5
                          ? _selectedIndex = 0
                          : _selectedIndex += 1;
                    });
                    _pageController.animateToPage(_selectedIndex,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
