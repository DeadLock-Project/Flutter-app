import 'package:flutter/material.dart';
import 'package:peer_2_peer/peers/peer_details.dart';

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
         Navigator.of(context).pushNamed(PeerData.routeName);
      },
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            Container(
              width: 90,
              height: 90,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ))),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style:
                  Theme.of(context).textTheme.headline6.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
