import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/AccountModule/about_us.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/AccountModule/contact_us.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/AccountModule/faq_terms.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/AccountModule/manage_address.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/AccountModule/privacy_policy.dart';
import 'package:handyman_demo/screens/login_screen.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              border: Border.all(
                  style: BorderStyle.solid,
                  color: Colors.grey.withOpacity(0.5))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                            image: AssetImage("assets/person.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Alizam Smith",
                      ),
                      Text(
                        "+911 000 000 000",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
        _accountItems(Icons.location_on, "Manage Address", "manage", context),
        _accountItems(Icons.markunread, "Contact us","contact", context),
        _accountItems(Icons.lock, "Privacy Policy","privacy", context),
        _accountItems(Icons.contacts, "About Us","about", context),
        _accountItems(Icons.line_weight, "FAQ's & Terms","faq", context),
        SizedBox(
          height: 15.0,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen()));
          },
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 2),
              ],
            ),
            child: Center(
              child: Text(
                "Sign out",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _accountItems(IconData iconFirst, String title, String goToPageName, BuildContext context) {
    return InkWell(
      onTap: ()=>_pageRoute(goToPageName, context),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid,
                color: Colors.grey.withOpacity(0.5),
                width: 0.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  iconFirst,
                  color: Colors.deepPurple,
                  size: 20.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey,
              size: 22.0,
            ),
          ],
        ),
      ),
    );
  }

  _pageRoute(goToPage, context){
    if(goToPage == "manage"){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => ManageAddress()
      ));
    }else if(goToPage =="about"){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => AboutUs()
      ));
    }else if(goToPage =="contact"){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => ContactUs()
      ));
    }else if(goToPage =="privacy"){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => PrivacyPolicy()
      ));
    }else{
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => FaqTerms()
      ));
    }
  }
}
