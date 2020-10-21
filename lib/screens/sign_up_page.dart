import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/forget_password.dart';
import 'package:handyman_demo/screens/home_screens/dashhboard.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            _buildLoginForm(),
            _enterOtp(),
            Container(
              margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
              width: MediaQuery.of(context).size.width - 64,
              height: 60.0,
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
                    Text("Sign up now", style: TextStyle(color: Colors.white)),
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ForgetPassword()));
                  },
                  child: Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.deepPurple),
                  )),
            ),
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
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0)),
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
          ],
        ),
      ),
    );
  }

  Container _buildLoginForm() {
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
                      labelText: "Enter Full Name",
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
          ],
        ),
      ),
    );
  }

  _enterOtp() {
    return Container(
      padding: EdgeInsets.only(left: 32.0, right: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Enter OTP sent to above given number",
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
          SizedBox(height: 8.0),
          Container(
            decoration: BoxDecoration(
                border:
                    Border.all(style: BorderStyle.solid, color: Colors.grey)),
            child: Center(
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "00:23",
                style: TextStyle(color: Colors.black54, fontSize: 14.0),
              ),
              Text(
                "Resend OTP",
                style: TextStyle(color: Colors.deepPurple, fontSize: 14.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
