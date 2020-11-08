import 'package:flutter/material.dart';
import 'package:peer_2_peer/peers/widgets/peers_category_grid.dart';
import 'package:peer_2_peer/widgets_global/custom_nav_bar.dart';

class Peers extends StatelessWidget {
  static const routeName = "/peers";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peers'),
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
                    'Select Peer',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 24, color: Colors.black),
                  ),
                  Image.asset(
                    'assets/images/icon_peers.png',
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
