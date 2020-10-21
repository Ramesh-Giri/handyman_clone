import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/widgets/notification_list.dart';

class NotificationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        InkWell(
            onTap: ()=> {},
            child: NotificationList(),),
        InkWell(
            onTap: ()=> (){},
          child: NotificationList(),),
        InkWell(
            onTap: ()=>(){},
          child: NotificationList(),),
      ],
    );
  }
}