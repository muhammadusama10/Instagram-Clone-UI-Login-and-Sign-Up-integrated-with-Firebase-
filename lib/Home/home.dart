import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/Screens/Home_screen.dart';
import 'package:insta_clone/Screens/Login_Screen.dart';
import 'package:insta_clone/Screens/Post_Screen.dart';
import 'package:insta_clone/Screens/Profile.dart';
import 'package:insta_clone/Screens/Reels_Screen.dart';
import 'package:insta_clone/Screens/Search_Screen.dart';
import 'package:insta_clone/Screens/Splash_Screen.dart';
import 'package:insta_clone/Screens/register_screen.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;
  static List<Widget> listOptions = <Widget>[
    Home_Screen(),
    Search(),
    Postscreen(),
    Reels(),
    Profile(),
  ];
  void _onitemtap(int index) {
    setState(() {});
    selectedindex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: listOptions.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: '', backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: Colors.black),
        ],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        iconSize: 30,
        currentIndex: selectedindex,
        selectedItemColor: Colors.white,
        onTap: _onitemtap,
      ),
    );
  }
}
