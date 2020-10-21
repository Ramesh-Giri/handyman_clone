import 'package:flutter/material.dart';

class CategoryDropdown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryDropdownState();
  }
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  List<DropdownMenuItem<String>> listDropDown = [];
  var _value = "Tap, Wash Basin and Sink Problem";

  void loadData() {
    _loadDataItems("Tap, Wash Basin and Sink Problem");
    _loadDataItems("Bathroom Water Filter");

  }

  @override
  void initState() {
    super.initState();
    setState(() {
      loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(

            child: DropdownButton(
              isExpanded: true,
              items: listDropDown,
              value: _value,
              onChanged: (String value) {
                setState(() {
                  _value = value;
                });
              },

          ),
        ),
      ],
    );
  }

  _loadDataItems(String title) {
    listDropDown.add(new DropdownMenuItem(
      child: new Text(title),
      value: title,
    ));
  }
}
