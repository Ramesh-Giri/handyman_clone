import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/CategoryModule/user_profile.dart';
import 'package:handyman_demo/screens/home_screens/widgets/person_card_category.dart';

class PersonsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: (Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            )
          ],
        )),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20.0),
          child: Container(
            height: 30.0,
            width: 300.0,
            color: Colors.deepPurple,
            /*child: CategoryDropdown(),*/
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => UserProfile ()
              ));
            },
            child: CategoryPersonCard("Aliza Smith", "assets/person.png","Plumber", "\$200/ hr.", "4.1", "2.0 km away"),),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => UserProfile ()
              ));
            },
            child: CategoryPersonCard("Aliza Smith", "assets/person.png","Plumber", "\$200/ hr.", "4.1", "2.0 km away"),),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => UserProfile ()
              ));
            },
            child: CategoryPersonCard("Aliza Smith", "assets/person.png","Plumber", "\$200/ hr.", "4.1", "2.0 km away"),),
        ],
      ),
    );
  }
}
