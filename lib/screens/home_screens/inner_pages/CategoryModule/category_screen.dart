import 'package:flutter/material.dart';
import 'package:handyman_demo/screens/home_screens/inner_pages/CategoryModule/sub_category.dart';
import 'package:handyman_demo/screens/home_screens/widgets/category_item.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(15.0),
      child: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          InkWell(
            onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SubCategory()));},
            child: CategoryItem(),
          ),

          InkWell(
            onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SubCategory()));},
            child: CategoryItem(),
          ),
          InkWell(
            onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SubCategory()));},
            child: CategoryItem(),
          ),

        ],
      ),
    );
  }
}
