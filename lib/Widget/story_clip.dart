import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Screens/Home_screen.dart';
import 'package:insta_clone/Widget/Circle_story.dart';

class StoryClip extends StatelessWidget {
  final String storyname;
  const StoryClip({Key? key, required this.storyname}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.pink, width: 3)),
              ),
              Circle_Story()
            ],
          ),
        ),
        Text(
          storyname,
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
