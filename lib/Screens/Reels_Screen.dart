import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Widget/reel_2.dart';
import 'package:insta_clone/Widget/reel_widget.dart';

class Reels extends StatelessWidget {
  final pgview = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pgview,
        scrollDirection: Axis.vertical,
        children: [
          reel_widget(),
          reel_2(),
        ],
      ),
    );
  }
}
