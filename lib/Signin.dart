import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Signin extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            left: 15,
            child: Container(
              child: Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.purple.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ),
          ),
          Positioned(
            top: 125,
            left: 25,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(75)),
              height: MediaQuery.of(context).size.height * 0.075,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'E-mail Address',
                ),
              ),
            ),
          ),
          Positioned(
            top: 225,
            left: 25,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(75)),
              height: MediaQuery.of(context).size.height * 0.075,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Password',
                ),
              ),
            ),
          ),
          Positioned(
            top: 325,
            left: 25,
            child: Container(
              width: 350,
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: Colors.purple.shade700,
                splashColor: Colors.white,
                child: Text(
                  "Log In",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            top: 410,
            left: 190,
            child: Container(
              height: 25,
              width: 25,
              child: Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 25,
            child: Container(
              width: 350,
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: Colors.indigo,
                splashColor: Colors.white,
                child: Text(
                  "Facebook Login",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
