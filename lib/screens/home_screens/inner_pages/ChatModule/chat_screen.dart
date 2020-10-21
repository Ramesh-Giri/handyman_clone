import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/widgets/chat_list.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        InkWell(
          onTap: () => {},
          child: ChatList("Ramesh Giri", "assets/person.png", "Beautician", "Yes, How can i help you?", "03:11 PM"),),
        InkWell(
          onTap: () => () {},
          child: ChatList("Aliza Smith", "assets/person.png", "Developer", "I'll be there.", "05:01 PM"),),
        InkWell(
          onTap: () => () {},
          child: ChatList("Poul Williams", "assets/person.png", "Pest Control", "See ya!!!", "11:00 PM"),),
      ],
    );
  }
}