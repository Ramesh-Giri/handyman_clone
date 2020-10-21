import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                  image: AssetImage("assets/person.png"), fit: BoxFit.cover)),
        ),
        title: Container(
          height: 80.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Found a beautician you may search for.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              )
            ],
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Text(
              "12:13 pm",
              style: TextStyle(color: Colors.grey, fontSize: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}
