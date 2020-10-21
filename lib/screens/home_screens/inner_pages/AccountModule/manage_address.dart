import 'package:flutter/material.dart';

class ManageAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Manage Address",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 70.0,
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Row(
              children: <Widget>[
                Text(
                  "Saved Address",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                )
              ],
            ),
          ),
          _setAddress(
              "Home",
              "101, Shradha Apartment Opp nataraj Cinema, Railway Godi Road Vadodara, Gujarat-3900020",
              "+91 000 000 000"),
          SizedBox(
            height: 5.0,
          ),
          _setAddress(
              "Home",
              "101, Shradha Apartment Opp nataraj Cinema, Railway Godi Road Vadodara, Gujarat-3900020",
              "+91 000 000 000"),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 60.0,
            decoration: BoxDecoration(color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 2)
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add_circle, color: Colors.deepPurple,),
                SizedBox(width: 10.0,),
                Text(
                  "Add New",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 16.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _setAddress(String place, String location, String phone) {
    return Container(
      height: 180.0,
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)]),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                place,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
              Icon(
                Icons.edit,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(
            width: 15.0,
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 20.0,
              ),
              SizedBox(width: 15.0),
              Expanded(
                  child: Text(
                location,
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              )),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
          SizedBox(
            width: 15.0,
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.phone_android,
                color: Colors.grey,
                size: 20.0,
              ),
              SizedBox(width: 15.0),
              Expanded(
                  child: Text(
                phone,
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              )),
              SizedBox(
                width: 20.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
