import 'package:flutter/material.dart';

class RequestList extends StatelessWidget {
  final String name, image, profession, price, status, time;

  RequestList(this.name, this.image, this.profession, this.price, this.status,
      this.time);

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
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        title: Container(
          height: 80.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    " | $profession.",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                price,
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              )
            ],
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              status,
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            ),
            Text(
              time,
              style: TextStyle(color: Colors.grey, fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
