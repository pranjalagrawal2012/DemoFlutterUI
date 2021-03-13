import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
            top: 5,
            left: 15,
            child: Container(
              child: Text(
                "Create new account",
                style: TextStyle(
                    color: Colors.purple.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ),
          ),
          Positioned(
            bottom: 525,
            left: 125,
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/5390339/pexels-photo-5390339.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"))),
            ),
          ),
          Positioned(
            bottom: 525,
            left: 225,
            child: Container(
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 25,
              ),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.purple.shade700,
                borderRadius: BorderRadius.circular(90),
              ),
            ),
          ),
          Positioned(
            bottom: 435,
            left: 25,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(75)),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'First Name',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 375,
            left: 25,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(75)),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Last Name',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 315,
            left: 25,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(75)),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Mobile Number',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 255,
            left: 25,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(75)),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Email Address',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 195,
            left: 25,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(75)),
              height: MediaQuery.of(context).size.height * 0.06,
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
            bottom: 135,
            left: 25,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(75)),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: Container(
              width: 300,
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: Colors.indigo,
                splashColor: Colors.white,
                child: Text(
                  "Sign Up",
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
