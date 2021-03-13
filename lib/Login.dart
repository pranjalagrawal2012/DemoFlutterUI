import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signin.dart';
import 'package:flutter_application_1/Signup.dart';
import 'package:flutter_application_1/home.dart';

class Login extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              child: Icon(
                Icons.phone_iphone,
                color: Colors.purple.shade700,
                size: 200,
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 25,
            child: Container(
              child: Text(
                "Say Hello To Your New App!",
                style: TextStyle(
                    color: Colors.purple.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 25,
            child: Container(
              child: Text(
                "You've just saved a week of development\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t and headaches.",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Positioned(
            top: 425,
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signin()));
                },
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 25,
            child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(50)),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Colors.white,
                splashColor: Colors.purple.shade700,
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
