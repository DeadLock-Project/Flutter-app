import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PeerData extends StatelessWidget {
  static const routeName = '/peer-details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/student5.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Joseph',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Skills',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Coding : ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              LinearPercentIndicator(
                                backgroundColor: Colors.white70,
                                width: 100.0,
                                lineHeight: 8.0,
                                percent: 0.8,
                                progressColor: Colors.green,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Baking : ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              LinearPercentIndicator(
                                backgroundColor: Colors.white70,
                                width: 100.0,
                                lineHeight: 8.0,
                                percent: 0.2,
                                progressColor: Colors.yellow,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Boxing : ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              LinearPercentIndicator(
                                backgroundColor: Colors.white70,
                                width: 100.0,
                                lineHeight: 8.0,
                                percent: 0.5,
                                progressColor: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Subjects',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Mathematics : ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              LinearPercentIndicator(
                                backgroundColor: Colors.white70,
                                width: 100.0,
                                lineHeight: 8.0,
                                percent: 0.8,
                                progressColor: Colors.green,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pilosophy :',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              LinearPercentIndicator(
                                backgroundColor: Colors.white70,
                                width: 100.0,
                                lineHeight: 8.0,
                                percent: 0.2,
                                progressColor: Colors.yellow,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Physics : ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              LinearPercentIndicator(
                                backgroundColor: Colors.white70,
                                width: 100.0,
                                lineHeight: 8.0,
                                percent: 0.5,
                                progressColor: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              Spacer(),
              RaisedButton(
                color: Theme.of(context).accentColor,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  child: Text('CONNECT',textAlign: TextAlign.center,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
