import 'package:flutter/material.dart';
import 'sign_up_page.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                _topStack(),
                _secondLayout(context),
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

  _secondLayout(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sign in or Sign up to Continue",
            style: TextStyle(color: Colors.grey, fontSize: 16.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                      labelText: "Mobile Number:",
                      hintStyle:
                          TextStyle(color: Colors.black54, fontSize: 14.0),
                      labelStyle:
                          TextStyle(color: Colors.black54, fontSize: 14.0),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.phone_android,
                        color: Colors.deepPurple,
                      )),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 32.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 64,
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) => SignUpPage()
                    ));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  child:
                      Text("Continue", style: TextStyle(color: Colors.white70)),
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 1.0,
                    width: 100.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    " Or Continue With ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 1.0,
                    width: 100.0,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              _signInOption(context),
              SizedBox(height: 20.0),
              Container(
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: RichText(
                      text: TextSpan(
                        text: '',
                        children: <TextSpan>[
                          TextSpan(
                              text: 'By Signing up, you agree to our ',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12.0)),
                          TextSpan(
                              text: 'terms & Condition',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black54,
                                  decoration: TextDecoration.underline)),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  _signInOption(BuildContext context) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width - 64,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(
                      style: BorderStyle.solid, color: Colors.deepPurple),
                  color: Colors.transparent),
              child: Center(
                child: Text(
                  "Facebook",
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border:
                      Border.all(style: BorderStyle.solid, color: Colors.red),
                  color: Colors.transparent),
              child: Center(
                child: Text(
                  "Google +",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
