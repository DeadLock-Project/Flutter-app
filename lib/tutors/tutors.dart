import 'package:flutter/material.dart';
import 'package:peer_2_peer/tutors/widgets/tutors_category_grid.dart';
import 'package:peer_2_peer/widgets_global/custom_nav_bar.dart';

class Tutors extends StatelessWidget {
  static const routeName = "/tutors";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutors'),
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
                    'Select Tutor',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 24, color: Colors.black),
                  ),
                  Image.asset(
                    'assets/images/icon_tutor.png',
                    width: 80,
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
