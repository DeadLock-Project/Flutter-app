import 'package:flutter/material.dart';
import 'package:peer_2_peer/dashboard/dashboard.dart';
import 'package:peer_2_peer/providers/content_provider.dart';
import 'package:provider/provider.dart';

class CustomBTNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CTProvider>(
      builder: (ctx, ct, _) => BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: ct.selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          if(index == 0)
          Navigator.of(context).pushReplacementNamed(DashBoard.routeName);
          ct.changeSelectedBN(index);
        },
      ),
    );
  }
}
