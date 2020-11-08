import 'package:flutter/material.dart';
import 'package:peer_2_peer/dashboard/widgets/category.dart';
import 'package:peer_2_peer/dashboard/widgets/category_grid.dart';
import 'package:peer_2_peer/widgets_global/custom_nav_bar.dart';

class DashBoard extends StatefulWidget {
  static const routeName = "/dashboard";

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.search),
      ),
      appBar: AppBar(
        title: Text('DashBoard'),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBTNavBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Hi , Anoop',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 24, color: Colors.black),
                  ),
                  Container(
                    height: 100,
                    width:100 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                      borderRadius:  BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/student1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
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
