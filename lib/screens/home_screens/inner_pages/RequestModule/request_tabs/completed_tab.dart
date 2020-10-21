import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/RequestModule/job_details.dart';
import 'package:handyman_demo/screens/home_screens/widgets/request_list.dart';
class CompletedTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        InkWell(
          onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => JobDetails()));},
          child: RequestList("Beena Smith", "assets/person.png", "Beautician", "\$200 /hour","Approved", "03:11 PM"),),
        InkWell(
          onTap: () {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => JobDetails()));},
          child: RequestList("Alex John", "assets/person.png", "Beautician", "\$20 /hour","In Process", "03:11 PM"),),
      ],
    );
  }
}