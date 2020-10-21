import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String name, profession, image;

  ChatPage(this.name, this.profession, this.image);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            children: <Widget>[
              Image(
                height: 40.0,
                width: 40.0,
                image: AssetImage(image),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "$name | $profession",
                style: TextStyle(fontSize: 12.0, color: Colors.white),
              )
            ],
          ),
          actions: <Widget>[
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    _purpleChat(context, "Hello Guys", "12.00 PM"),
                    _whiteChat(context, "Hello Guys", "12.00 PM"),
                    _purpleChat(context, "Hello Guys", "12.00 PM"),
                    _whiteChat(context, "Hello Guys", "12.00 PM"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 2),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5.0),
                      height: 45,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        "Book",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width - 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(width: 5.0,),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Type your message",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 14.0),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            children: <Widget>[
                              Icon(Icons.add_circle_outline, color: Colors.grey),
                              Icon(Icons.keyboard_voice, color: Colors.grey),
                            ],
                          ),
                          SizedBox(width: 5.0,),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                        padding: EdgeInsets.all(5.0),
                        height: 45,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ))),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _purpleChat(BuildContext context, String message, String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
          margin: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width - 100,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 2),
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message,
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    time,
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _whiteChat(BuildContext context, String message, String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
          margin: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width - 100,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 2),
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    time,
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
