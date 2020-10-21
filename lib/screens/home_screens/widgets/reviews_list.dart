import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/ChatModule/chat_page.dart';

class ReviewsList extends StatelessWidget {
  final String name, image, review, rating, date;

  ReviewsList(this.name, this.image, this.review, this.rating, this.date);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 32.0, left: 32.0, right: 20.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image:
                        DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
                  ),

                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(name, style: TextStyle(fontSize: 16.0),),
                      Row(
                        children: <Widget>[
                          Text(rating, style: TextStyle(color: Colors.green),),
                          Icon(Icons.star, color: Colors.green, size: 15.0,),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              Text(date, style: TextStyle(color: Colors.grey, fontSize: 12.0),)
            ],
          ),

          SizedBox(height: 15.0,),

          Text(review),
        ],
      ),
    );
  }
}
