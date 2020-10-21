import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/ChatModule/chat_page.dart';

class ChatList extends StatelessWidget {
  final String name, image, profession, message, time;

  ChatList(this.name, this.image, this.profession, this.message, this.time);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context) => ChatPage(this.name, this.profession, this.image),
        ));
      },
      child: Card(
        child: ListTile(
          leading: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
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
                SizedBox(height: 5.0,),
                Text(
                  message,
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                )
              ],
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                time,
                style: TextStyle(color: Colors.grey, fontSize: 10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
