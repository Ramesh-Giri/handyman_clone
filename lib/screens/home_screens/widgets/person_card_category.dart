import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/ChatModule/chat_page.dart';

class CategoryPersonCard extends StatelessWidget {
  final String name, image, profession, price, reviews, distance;

  CategoryPersonCard(this.name, this.image, this.profession, this.price, this.reviews,
      this.distance);

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    reviews,
                    style: TextStyle(color: Colors.black, fontSize: 12.0),
                  ),
                  Icon(Icons.star, color: Colors.green, size: 14.0,)
                ],
              ),
            ),
            Text(
              distance,
              style: TextStyle(color: Colors.grey, fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
