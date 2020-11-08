import 'package:flutter/material.dart';
import 'package:peer_2_peer/peers/widgets/peers_category.dart';
import 'package:peer_2_peer/tutors/tutors.dart';

class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 1.2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 200),
      children: [
        CategoryCard(
          title: 'Joseph',
          image: 'assets/images/student5.jpg',

        ),
        CategoryCard(
          title: 'Emily',
          image: 'assets/images/student2.jpg',
        ),
        CategoryCard(
          title: 'Nick',
          image: 'assets/images/student3.jpg',
        ),
        CategoryCard(
          title: 'Jessica',
          image: 'assets/images/student4.jpg',
        ),
        CategoryCard(
          title: 'Max',
          image: 'assets/images/student1.jpg',
        ),
        CategoryCard(
          title: 'Catherine',
          image: 'assets/images/student6.jpg',
        ),
      ],
    );
  }
}
