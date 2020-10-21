import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/CategoryModule/book_page.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/CategoryModule/profile_tabs/about_tab.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/CategoryModule/profile_tabs/reviews_tab.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/ChatModule/chat_page.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() {
    return _UserProfileState();
  }
}

class _UserProfileState extends State<UserProfile>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  _UserProfileState() {
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: <Widget>[
          Icon(
            Icons.share,
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              _topStack(),
              //_tabView(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)]),
                child: new TabBar(
                  indicatorColor: Colors.deepPurple,
                  labelColor: Colors.white,
                  controller: tabController,
                  tabs: [
                    new Tab(
                      child: Text(
                        'About',
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.deepPurple),
                      ),
                    ),
                    new Tab(
                      child: Text(
                        'Reviews',
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.deepPurple),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height - 350,
                width: MediaQuery.of(context).size.width,
                child: new TabBarView(
                  controller: tabController,
                  children: <Widget>[AboutTab(), ReviewsTab()],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _topStack() {
    return Stack(
      children: <Widget>[
        Container(
          height: 120.0,
          color: Colors.deepPurple,
        ),
        Positioned(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60.0,
              ),
              Container(
                  margin: EdgeInsets.only(left: 32, right: 32.0),
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Alex John",
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                            "| Plumber",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 15.0, bottom: 15.0, left: 32, right: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "\$ 250",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18.0),
                                ),
                                Text(
                                  "per hour",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10.0),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  "2.4 km",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18.0),
                                ),
                                Text(
                                  "away from you",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            BookPage()));
                              },
                              child: Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.check_circle,
                                      size: 15.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text(
                                      "Book now",
                                      style: TextStyle(color: Colors.white70),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ChatPage("Alez john", "Beautician",
                                              "assets/person.png"),
                                    ));
                              },
                              child: Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 1)
                                  ],
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.message,
                                      size: 15.0,
                                      color: Colors.deepPurple,
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text(
                                      "Message",
                                      style:
                                          TextStyle(color: Colors.deepPurple),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10.0),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage("assets/person.png"), fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        Positioned(
          right: 50,
          top: 70,
          child: Row(
            children: <Widget>[
              Text(
                "3.5",
                style: TextStyle(color: Colors.green, fontSize: 12.0),
              ),
              Icon(
                Icons.star,
                color: Colors.green,
                size: 18.0,
              ),
              Text(
                "(98)",
                style: TextStyle(color: Colors.grey, fontSize: 10.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
