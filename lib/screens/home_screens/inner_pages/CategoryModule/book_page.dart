import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:handyman_demo/screens/home_screens/widgets/category_dropdown.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() {
    return new _BookPageState();
  }
}

class _BookPageState extends State<BookPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  _BookPageState() {
    tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Book Now",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Icon(
            Icons.check,
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              _topStack(),
              Container(
                  child: Calendar(
                    isExpandable: false,
                  )
              ),
              Container(
                height: MediaQuery.of(context).size.height - 300,
                width: MediaQuery.of(context).size.width,
                child: new TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "When?",
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                          CategoryDropdown(),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Where?",
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                          CategoryDropdown(),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: "House num",
                                          hintStyle: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14.0),
                                          labelStyle: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14.0),
                                          enabledBorder:
                                              new UnderlineInputBorder(
                                                  borderSide: new BorderSide(
                                                      color: Colors.grey,
                                                      width: 0.2)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: "Society / Building",
                                          hintStyle: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14.0),
                                          labelStyle: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14.0),
                                          enabledBorder:
                                              new UnderlineInputBorder(
                                                  borderSide: new BorderSide(
                                                      color: Colors.grey,
                                                      width: 0.2)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "Full Address",
                                    hintStyle: TextStyle(
                                        color: Colors.black54, fontSize: 14.0),
                                    labelStyle: TextStyle(
                                        color: Colors.black54, fontSize: 14.0),
                                    enabledBorder: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.grey, width: 0.2)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "Landmark",
                                    hintStyle: TextStyle(
                                        color: Colors.black54, fontSize: 14.0),
                                    labelStyle: TextStyle(
                                        color: Colors.black54, fontSize: 14.0),
                                    enabledBorder: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.grey, width: 0.2)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
          top: 10,
          left: 20,
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                            image: AssetImage("assets/person.png")),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Name here",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                            Text(
                              " | Plumber",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12.0),
                            )
                          ],
                        ),
                        Text(
                          "Specilities here",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 12.0),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
