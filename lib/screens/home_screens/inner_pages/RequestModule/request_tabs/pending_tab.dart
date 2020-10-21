import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/RequestModule/job_details.dart';
import 'package:handyman_demo/screens/home_screens/widgets/request_list.dart';
class PendingTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        InkWell(
          onTap: () {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => JobDetails()));},
          child: RequestList("Alizam Smith", "assets/person.png", "Beautician", "\$200 /hour","Pending", "21st jan, 09:00-11:00"),),
        InkWell(
          onTap: () {},
          child: RequestList("Alex John", "assets/person.png", "Beautician", "\$200 /hour","Pending", "21st jan, 09:00-11:00"),),
        InkWell(
          onTap: () {},
          child: RequestList("Poul Wiliams", "assets/person.png", "Beautician", "\$200 /hour","Pending", "21st jan, 09:00-11:00"),),
        InkWell(
          onTap: () {},
          child: RequestList("Beena Smith", "assets/person.png", "Beautician", "\$200 /hour","Pending", "21st jan, 09:00-11:00"),),
      ],
    );
  }
}