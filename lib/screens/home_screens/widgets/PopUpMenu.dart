import 'package:flutter/material.dart';

class PopUpMenu extends StatefulWidget {
  @override
  _PopUpMenuState createState() {
    return _PopUpMenuState();
  }
}

class _PopUpMenuState extends State<PopUpMenu> {
  int _radioValue;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      title: Text("Dialog"),
      content: Container(
        height: 130.0,
        child: Column(
          children: <Widget>[
            Divider(color: Colors.black54,),
            Row(
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: _radioValue,
                  activeColor: Colors.blueAccent,
                  onChanged: (int value) => _handleRadioValueChange(value),
                ),
                new Text(
                  'Basic',
                  style: new TextStyle(fontSize: 16.0),
                ),
              ],),

            Row(children: <Widget>[
              Radio(
                value: 2,
                groupValue: _radioValue,
                activeColor: Colors.blueAccent,
                onChanged: (int value) => _handleRadioValueChange(value),
              ),
              new Text(
                'Standard',
                style: new TextStyle(fontSize: 16.0),
              ),
            ],),
            Divider(color: Colors.black54,),
          ],
        ),
      ),

      actions: <Widget>[
        Row(
          children: <Widget>[
            RaisedButton(onPressed: () {},child: Text("Cancel", style: TextStyle(color: Colors.blueAccent),), color: Colors.white, elevation: 0.0,),
            RaisedButton(onPressed: () {},child: Text("Ok", style: TextStyle(color: Colors.blueAccent),), color: Colors.white, elevation: 0.0,),

          ],
        )

      ],
    );
  }
}