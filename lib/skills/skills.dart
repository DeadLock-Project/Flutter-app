import 'package:flutter/material.dart';
import 'package:peer_2_peer/skills/widgets/skills_category_grid.dart';
import 'package:peer_2_peer/widgets_global/custom_nav_bar.dart';

class Skills extends StatelessWidget {
  static const routeName = "/skills";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBTNavBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Select Skills',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 24, color: Colors.black),
                  ),
                  Image.asset(
                    'assets/images/icon_skills_outline.png',
                    width: 50,
                  )
                ],
              ),
              SizedBox(height: 30,),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CategoryGrid(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
