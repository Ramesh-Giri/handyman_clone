import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Privacy Policy",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                _topStack(),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0,),
                      Text(
                        "Our Privacy Policy",
                        style:
                        TextStyle(color: Colors.deepPurple, fontSize: 16.0),
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        "Lorem Ipsum sit amit is simply the dummy text of the Industry.\n\n Lorem Ipsum sit amit is simply the dummy text of the Industry.Lorem Ipsum sit amit is simply the dummy text of the Industry.\n\nLorem Ipsum sit amit is simply the dummy text of the Industry.Lorem Ipsum sit amit is simply the dummy text of the Industry.",
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),

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
          top: 10,
          left: 100,
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/h.png"), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              RichText(
                text: TextSpan(
                  text: '',
                  children: <TextSpan>[
                    TextSpan(
                        text: 'HANDY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0)),
                    TextSpan(text: 'MAN', style: TextStyle(fontSize: 22.0)),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
