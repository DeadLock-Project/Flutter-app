import 'package:flutter/material.dart';
import 'package:peer_2_peer/subjects/widgets/subjects_category.dart';

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
          title: 'Mathematics',
        ),
        CategoryCard(
          title: 'Physics',
        ),
        CategoryCard(
          title: 'Informations',
        ),
        CategoryCard(
          title: 'Philosophy',
        ),
        CategoryCard(
          title: 'Literature',
        ),
        CategoryCard(
          title: 'Chemistry',
        ),
        CategoryCard(
          title: 'Arts',
        ),
        CategoryCard(
          title: 'Language',
        )
      ],
    );
  }
}
