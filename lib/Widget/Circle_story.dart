import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Screens/Home_screen.dart';

class Circle_Story extends StatelessWidget {
  const Circle_Story({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ClipOval(
        child: Image.asset(
          'assets/images/Story.jpeg',
          fit: BoxFit.cover,
          width: 68,
          height: 68,
        ),
      ),
    );
  }
}
