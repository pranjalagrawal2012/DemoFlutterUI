import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/Signin.dart';
import 'package:flutter_application_1/Signup.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: SafeArea(
        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.purple.shade700),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      right: 75,
                      child: Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/5390339/pexels-photo-5390339.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"))),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
              Divider(
                thickness: 1.0,
              ),
              ListTile(
                title: Text(
                  'Sign in',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signin()));
                },
              ),
              Divider(
                thickness: 1.0,
              ),
              ListTile(
                title: Text(
                  'Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
              ),
              Divider(
                thickness: 1.0,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/5390339/pexels-photo-5390339.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('flutter'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('flutterfree1@gnail.com'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('1234561231'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('khshHGYUFDWQYUVDGQWYDQGV'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
