import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Widget/post_widget.dart';
import 'package:insta_clone/widget/story_clip.dart';

class Home_Screen extends StatelessWidget {
  final List stories = [
    'Story 1',
    'Story 2',
    'Story 3',
    'Story 4',
    'Story 5',
  ];
  final List posts = [
    'Post 1',
    'Post 2',
    'Post 3',
    'Post 4',
    'Post 5',
  ];
  Home_Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: SizedBox(
          width: 120,
          height: 50,
          child: Image(
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
        actions: [
          Row(
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite_outline_rounded),
                ),
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.energy_savings_leaf_outlined),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey.shade700,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
                itemCount: stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StoryClip(storyname: stories[index]);
                }),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey.shade700,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 10,
              child: ListView.builder(
                  itemCount: posts.length,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return post();
                  }))
        ]),
      ),
    );
  }
}
