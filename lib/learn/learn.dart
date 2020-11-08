import 'package:flutter/material.dart';
import 'package:peer_2_peer/learn/widgets/custom_container.dart';


class Learn extends StatelessWidget {
  final avatharWidth = 150.0;
  static const routeName = '/learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn'),
      ),
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              width: avatharWidth,
              height: avatharWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(avatharWidth)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(avatharWidth),
                  child: Image.asset(
                    'assets/images/student1.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Anoop \nwants to learn ...',
              style: Theme.of(context).textTheme.headline6,
              textAlign:TextAlign.center ,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCircleContainer(title: 'Coding',width: 100,),
                SizedBox(width: 50,),
                CustomCircleContainer(title: 'Boxing',width: 100,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/icon_learner.png',width: 50,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCircleContainer(title: 'Dancing',width: 100,),
                SizedBox(width: 50,),
                CustomCircleContainer(title: 'Add New Skill',width: 100,)
              ],
            ),
            Spacer()
          ],
        ),
      ),
    ));
  }
}
