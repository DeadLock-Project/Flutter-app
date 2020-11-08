import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final String routeName;
  final borderRadius = 30.0;
  const CategoryCard({Key key, this.title, this.image, this.routeName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       // Navigator.of(context).pushNamed(routeName);
      },
      child: Container(
        width: 50,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        child: CircleAvatar(child: Text(title),)
        ),
    );
  }
}
