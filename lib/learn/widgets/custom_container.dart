import 'package:flutter/material.dart';

class CustomCircleContainer extends StatelessWidget {
  final String title;
  final double width;
  const CustomCircleContainer({Key key, this.width, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        width: width,
        height: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width),
          color:Colors.blue,
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 16,
                color: Colors.white
              ),
        ));
  }
}
