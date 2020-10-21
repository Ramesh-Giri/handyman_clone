import 'package:flutter/material.dart';

class FaqTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "FAQ & Terms",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _listCard("About Services"),
          _listCard("Sign in & Sign up"),
          _listCard("Payment Policy"),
          _listCard("Searching Service"),
          _listCard("Rating"),
          _listCard("Chatting"),
        ],
      ),
    );
  }

  Widget _listCard(String title) {
    return Card(
        child: Container(
      margin: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 16.0),
          ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    ));
  }
}
