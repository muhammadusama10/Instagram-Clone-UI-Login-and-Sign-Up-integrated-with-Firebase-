import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Home/home.dart';
import 'package:insta_clone/Screens/Home_screen.dart';
import 'package:insta_clone/Screens/Login_Screen.dart';

class splash_screen extends StatefulWidget {
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  void initState() {
    super.initState();
    wheretogo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('assets/images/splash_logo.png')),
      ),
    );
  }

  void wheretogo() async {
    User? user = FirebaseAuth.instance.currentUser;
    Timer(Duration(seconds: 2), () {
      if (user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      }
    });
  }
}
