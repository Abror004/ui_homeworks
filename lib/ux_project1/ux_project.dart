import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UX_Project_Page extends StatefulWidget {
  static const String id = "UX_Project_Page";

  @override
  _UX_Project_PageState createState() => _UX_Project_PageState();
}

class _UX_Project_PageState extends State<UX_Project_Page> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;
  List _editcolor = ['f', 'f', 'f', 'f'];
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.teal,
        title: Text(
          "Shopping App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        //automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.teal,
        child: ListView(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height * 0.3),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/Screenshot_3.png"),
                    radius: 60,
                  ),
                  Text(
                    "Jackie Chan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Little Jack",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.blue,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle_outlined,
                    ),
                    label: "Profile",
                    backgroundColor: Colors.white,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                    ),
                    label: "Shopping",
                    backgroundColor: Colors.white,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.campaign_sharp),
                    label: "discounts",
                    backgroundColor: Colors.white,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: "search",
                    backgroundColor: Colors.white,
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.teal,
                unselectedItemColor: Colors.black,
                onTap: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
            Container(
              //color: Colors.white24,
              height: (MediaQuery.of(context).size.height * 0.15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Image(
                        image: AssetImage("assets/images/hotel1.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                      IconButton(
                        color:
                            _editcolor[0] == 't' ? Colors.red : Colors.white38,
                        onPressed: () {
                          setState(() {
                            _editcolor[0] == 't'
                                ? _editcolor[0] = 'f'
                                : _editcolor[0] = 't';
                          });
                        },
                        icon: Icon(
                          Icons.favorite_outlined,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image(
                        image: AssetImage("assets/images/hotel2.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _editcolor[1] == 't'
                                ? _editcolor[1] = 'f'
                                : _editcolor[1] = 't';
                          });
                        },
                        icon: Icon(
                          Icons.favorite_outlined,
                          size: 35,
                        ),
                        color:
                            _editcolor[1] == 't' ? Colors.red : Colors.white38,
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image(
                        image: AssetImage("assets/images/hotel3.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _editcolor[2] == 't'
                                ? _editcolor[2] = 'f'
                                : _editcolor[2] = 't';
                          });
                        },
                        icon: Icon(
                          Icons.favorite_outlined,
                          size: 35,
                        ),
                        color: _editcolor[2] == 't' ? Colors.red : Colors.white38,
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image(
                        image: AssetImage("assets/images/hotel4.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _editcolor[3] == 't'
                                ? _editcolor[3] = 'f'
                                : _editcolor[3] = 't';
                          });
                        },
                        icon: Icon(
                          Icons.favorite_outlined,
                          size: 35,
                        ),
                        color: _editcolor[3] == 't' ? Colors.red : Colors.white38,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: 1,
              margin: EdgeInsets.all(10),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
