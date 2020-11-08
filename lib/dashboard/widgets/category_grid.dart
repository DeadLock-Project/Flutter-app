import 'package:flutter/material.dart';
import 'package:peer_2_peer/dashboard/widgets/category.dart';
import 'package:peer_2_peer/learn/learn.dart';
import 'package:peer_2_peer/peers/peers.dart';
import 'package:peer_2_peer/skills/skills.dart';
import 'package:peer_2_peer/subjects/subjects.dart';
import 'package:peer_2_peer/teach/learn.dart';
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
          title: 'Tutors',
          image: 'assets/images/icon_tutor.png',
          routeName: Tutors.routeName,
        ),
        CategoryCard(
          title: 'Peers',
          image: 'assets/images/icon_peers.png',
          routeName: Peers.routeName,
        ),
        CategoryCard(
          title: 'Subjects',
          image: 'assets/images/icon_subjects.png',
          routeName: Subjects.routeName,
        ),
        CategoryCard(
          title: 'Skills',
          image: 'assets/images/icon_skills_outline.png',
          routeName: Skills.routeName,
        ),
        CategoryCard(
          title: 'To Learn',
          image: 'assets/images/icon_learner.png',
         routeName: Learn.routeName,
        ),
        CategoryCard(
          title: 'To Teach',
          image: 'assets/images/icon_to_teach.png',
         routeName: Teach.routeName,
        ),
      ],
    );
  }
}
