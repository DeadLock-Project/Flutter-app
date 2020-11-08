import 'package:flutter/material.dart';
import 'package:peer_2_peer/auth/auth_screen.dart';
import 'package:peer_2_peer/dashboard/dashboard.dart';
import 'package:peer_2_peer/learn/learn.dart';
import 'package:peer_2_peer/peers/peer_details.dart';
import 'package:peer_2_peer/peers/peers.dart';
import 'package:peer_2_peer/providers/content_provider.dart';
import 'package:peer_2_peer/skills/skills.dart';
import 'package:peer_2_peer/subjects/subjects.dart';
import 'package:peer_2_peer/teach/learn.dart';
import 'package:peer_2_peer/tutors/tutors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => CTProvider())],
      child: MaterialApp(
        title: 'Peer2Peer',
        theme: ThemeData(
          fontFamily: 'BebasNeue',
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  letterSpacing: 1,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple)),
          primaryColor: Colors.purple,
          accentColor: Colors.amber,
        ),
        home: AuthScreen(),
        routes: {
          DashBoard.routeName: (ctx) => DashBoard(),
          Tutors.routeName:(ctx) => Tutors(),
          Subjects.routeName:(ctx) => Subjects(),
          Peers.routeName:(ctx)=>Peers(),
          Skills.routeName:(ctx)=>Skills(),
          Learn.routeName:(ctx)=>Learn(),
          Teach.routeName:(ctx)=>Teach(),
          PeerData.routeName:(ctx) =>PeerData(),
        },
      ),
    );
  }
}
