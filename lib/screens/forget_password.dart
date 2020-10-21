import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/dashhboard.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Forget Password?",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(32.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Enter your registered email address.\nWe'll send password reset info on mail",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 32.0,
                ),

                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Enter Email Id",
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

                Container(
                  margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
                  width: MediaQuery.of(context).size.width - 64,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => DashBoardPage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    child:
                    Text("Submit", style: TextStyle(color: Colors.white70)),
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            
            bottom: 10,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                      text: '',
                      children: <TextSpan>[
                        TextSpan(
                            text: 'By signing up, you agree to our ',
                            style: TextStyle(color: Colors.grey, fontSize: 12.0)),
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
            ),
          ),
        ],
      ),
    );
  }
}
