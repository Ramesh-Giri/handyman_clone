import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/CategoryModule/persons_list.dart';

class SubCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                _topStack(),
                _bottomList("Tap, Wash Basin and Sink Problem", context),
                _bottomList("Bathroom Water Filter", context),
                _bottomList("Bathroom Filters", context),
                _bottomList("bathroom water Filters", context),
                _bottomList("BLock and Leakage", context),
                _bottomList("Water tank Problem", context),
                _bottomList("Pipeline & Pumps", context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _topStack() {
    return Stack(
      children: <Widget>[
        Container(
          height: 180.0,
          color: Colors.deepPurple,
        ),
        Positioned(
          left: 120,
          bottom: 50,
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/h.png"), fit: BoxFit.cover),
                ),
              ),
              Text(
                "Plumbing",
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _bottomList(String title, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => PersonsList()));
      },
      child: Container(
        padding: EdgeInsets.all(22.0),
        decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid, color: Colors.grey.withOpacity(0.5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 16.0),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
