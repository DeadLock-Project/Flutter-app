import 'package:flutter/material.dart';
import 'package:peer_2_peer/tutors/widgets/tutors_category.dart';
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
          title: 'James',
          image: 'assets/images/tutor1.jpg',
        ),
        CategoryCard(
          title: 'Rick',
          image: 'assets/images/tutor2.jpg',
        ),
        CategoryCard(
          title: 'Jessica',
          image: 'assets/images/tutor3.jpg',
        ),
        CategoryCard(
          title: 'Robert',
          image: 'assets/images/tutor4.jpg',
        ),
        CategoryCard(
          title: 'Maximillan',
          image: 'assets/images/tutor5.jpg',
        ),
        CategoryCard(
          title: 'Ralph',
          image: 'assets/images/tutor6.jpg',
        ),
      ],
    );
  }
}
