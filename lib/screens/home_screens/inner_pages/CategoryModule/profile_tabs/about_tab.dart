import 'package:flutter/material.dart';
class AboutTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum is simply dummy text of the printing and typesetting industry. Lore"),
                SizedBox(height: 20.0,),
                Text("Services",style: TextStyle(color: Colors.deepPurple, fontSize: 16.0),),
                SizedBox(height: 20.0,),
                Text("Tab, Wash Basin and Shink Problem\nBathroom watter Fitter\nBathroom Fittings",)
              ],
            ),

        )

      ],
    );
  }
}