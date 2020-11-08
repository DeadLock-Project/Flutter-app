import 'package:flutter/material.dart';
import 'package:peer_2_peer/skills/widgets/skills_category.dart';

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
          title: 'Poetry',
        ),
        CategoryCard(
          title: 'Dancing',
        ),
        CategoryCard(
          title: 'Coding',
        ),
        CategoryCard(
          title: 'Boxing',
        ),
        CategoryCard(
          title: 'Drawing',
        ),
        CategoryCard(
          title: 'Baking',
        ),
        CategoryCard(
          title: 'Make Up',
        ),
        CategoryCard(
          title: 'Push Up',
        )
      ],
    );
  }
}
