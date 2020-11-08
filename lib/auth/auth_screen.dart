import 'package:flutter/material.dart';
import 'package:peer_2_peer/dashboard/dashboard.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
                  child: Form(
            key: _formKey,
            child: SingleChildScrollView(
                        child: Column(
                children: [
                  SizedBox(height: 100,),
                  Image.asset(
                    'assets/images/icon_logo_big.png',
                    width: 100,
                  ),
                  // Text(
                  //   'Peer2Peer',
                  //   style: Theme.of(context).textTheme.headline6,
                  // ),
                  if(!_isLogin)
                    TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  if (!_isLogin)
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'VerifyPassword',
                      ),
                      obscureText: true,
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(DashBoard.routeName);
                    },
                    child: _isLogin ? Text('Login') : Text('SignUp'),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    onPressed: () {
                      setState(() {
                        _isLogin = !_isLogin;
                      });
                    },
                    child: !_isLogin ? Text('Login') : Text('SignUp'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
