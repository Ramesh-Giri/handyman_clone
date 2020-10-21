import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/widgets/reviews_list.dart';
class ReviewsTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        InkWell(
          onTap: () => {},
          child: ReviewsList("Ramesh Giri", "assets/person.png", "Beautician Yes, How can i help youYes, How can i help you", "4.0", "21st jan, 18"),),
        InkWell(
          onTap: () => () {},
          child: ReviewsList("Ramesh Giri", "assets/person.png", "Beautician Yes, How can i help youYes, How can i help you", "4.0", "21st jan, 18"),),
        InkWell(
          onTap: () => () {},
          child: ReviewsList("Ramesh Giri", "assets/person.png", "Beautician Yes, How can i help youYes, How can i help you", "4.0", "21st jan, 18"),),
      ],
    );
  }
}