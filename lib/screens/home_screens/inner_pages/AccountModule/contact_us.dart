import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Contact Us",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                _topStack(),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Or Write us your issue", style: TextStyle(color: Colors.deepPurple, fontSize: 16.0),),
                  ],
                ),

                _bottomForm(),

                Container(
                  margin:EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0) ,
                  width: MediaQuery.of(context).size.width - 64,
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    child:
                    Text("Sign up now", style: TextStyle(color: Colors.white70)),
                    color: Colors.deepPurple,
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
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60.0,
              ),
              Text(
                "Call to speak with us",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 32, right: 32.0),
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.call, color: Colors.deepPurple,),
                      SizedBox(width: 18.0,),
                      Text("Call Now", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 16.0),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bottomForm(){
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(

                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      labelText: "Your Name",
                      hintStyle:
                      TextStyle(color: Colors.black54, fontSize: 14.0),
                      labelStyle:
                      TextStyle(color: Colors.black54, fontSize: 14.0),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.person,
                        color: Colors.deepPurple,
                      )),
                )),
            Container(
              child: Divider(
                color: Colors.grey,
              ),
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Mobile Number",
                      hintStyle:
                      TextStyle(color: Colors.black54, fontSize: 14.0),
                      labelStyle:
                      TextStyle(color: Colors.black54, fontSize: 14.0),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.phone_android,
                        color: Colors.deepPurple,
                      )),
                )),


            Container(
              child: Divider(
                color: Colors.grey,
              ),
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Your Message",
                      hintStyle:
                      TextStyle(color: Colors.black54, fontSize: 14.0),
                      labelStyle:
                      TextStyle(color: Colors.black54, fontSize: 14.0),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        color: Colors.deepPurple,
                      )),
                )),
            Container(
              child: Divider(
                color: Colors.grey,
              ),
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}
