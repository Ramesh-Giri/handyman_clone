import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/NotificationModule/notifications_screen.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/RequestModule/requests_screen.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/CategoryModule/category_screen.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/AccountModule/account_screen.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/ChatModule/chat_screen.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardState createState() {
    return _DashBoardState();
  }
}

class _DashBoardState extends State<DashBoardPage> {
  int _currentIndex = 2;
  List<Widget> _children = [];
  List<Widget> _appBars = [];

  @override
  void initState() {
    _children.add(RequestScreen());
    _children.add(NotificationScreen());
    _children.add(CategoryList());
    _children.add(AccountScreen());
    _children.add(ChatListScreen());

    _appBars.add(_buildAppBarOneTwo("Requests"));
    _appBars.add(_buildAppBarOneTwo("Notifications"));
    _appBars.add(_buildAppBarThree());
    _appBars.add(_buildAppBarFourFive("Account"));
    _appBars.add(_buildAppBarFourFive("Chat"));

    super.initState();
  }

  Widget _buildAppBarOneTwo(String title) {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      title: Text(title),
      elevation: 0.0,
      automaticallyImplyLeading: false,
      actions: <Widget>[
        Icon(Icons.search),
        SizedBox(
          width: 5.0,
        ),
      ],
    );
  }

  Widget _buildAppBarFourFive(String title) {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      title: Text(title),
      elevation: 0.0,
      automaticallyImplyLeading: false,
    );
  }

  Widget _buildAppBarThree() {
    return PreferredSize(
      preferredSize: Size.fromHeight(250.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 250.0,
            color: Colors.white,
          ),
          Container(
            height: 220.0,
            color: Colors.deepPurple,
          ),
          Positioned(
            bottom: 70,
            left: 32.0,
            child: Text(
              "How Can We\nHelp You Today?",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0),
            ),
          ),
          Positioned(
            left: 20.0,
            child: Container(
              margin: EdgeInsets.only(top: 32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 18.0,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Location of Services",
                          style:
                              TextStyle(fontSize: 12.0, color: Colors.white)),
                      Text("Kathmandu, Nepal",
                          style:
                              TextStyle(fontSize: 16.0, color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 5.0),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 32,
            right: 32,
            child: Container(
              child: Card(
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        hintText: "Search products",
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search))),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _appBars[_currentIndex],
      body: _children[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      iconSize: 20.0,
      onTap: _onTabTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text(
              "REQUESTS",
              style: TextStyle(fontSize: 10.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(
              "NOTIFICATIONS",
              style: TextStyle(fontSize: 10.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            title: Text(
              "CATEGORIES",
              style: TextStyle(fontSize: 10.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
              "ACCOUNT",
              style: TextStyle(fontSize: 10.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            title: Text(
              "CHAT",
              style: TextStyle(fontSize: 10.0),
            )),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
    );
  }

  _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
