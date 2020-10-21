import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: GridTile(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: AssetImage("assets/h.png"), fit: BoxFit.cover)),
                ),

                SizedBox(height: 15.0,),
                Text(
                  "Person 1",
                  style: TextStyle(),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
