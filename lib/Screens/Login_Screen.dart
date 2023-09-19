import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Home/home.dart';
import 'package:insta_clone/Screens/Home_screen.dart';
import 'package:insta_clone/Screens/register_screen.dart';
import 'package:insta_clone/firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuthService();
  final emcnt = TextEditingController();
  final passcnt = TextEditingController();
  @override
  void dispose() {
    emcnt.dispose();
    passcnt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'English',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                '',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(children: [
              Container(
                height: 60,
                width: 180,
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: emcnt,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    fillColor: Colors.grey.shade700,
                    filled: true,
                    prefixIconColor: Colors.white,
                    constraints: BoxConstraints.tightFor(
                      width: 327,
                      height: 50,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'phone number,email or username'),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: passcnt,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    fillColor: Colors.grey.shade700,
                    filled: true,
                    prefixIconColor: Colors.white,
                    constraints: BoxConstraints.tightFor(
                      width: 327,
                      height: 50,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'password'),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  _Login();
                },
                child: Container(
                  height: 50,
                  width: 327,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forget you login credential's ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Get help logging in",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ]),
          ),
          const Expanded(
              flex: 2,
              child: Center(
                child: Text(''),
              )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _Login() async {
    String email = emcnt.text;
    String pass = passcnt.text;
    User? user = await _auth.signIN(email, pass);
    if (user != null) {
      print('SIGNUP SUCCESSFULLY');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      print('AN ERROR OCCURED');
    }
  }
}
