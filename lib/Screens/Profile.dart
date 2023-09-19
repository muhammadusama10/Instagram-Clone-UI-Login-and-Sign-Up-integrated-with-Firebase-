import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Screens/side_bar.dart';
import 'package:insta_clone/Widget/Circle_story.dart';
import 'package:insta_clone/widget/story_clip.dart';

class Profile extends StatelessWidget {
  final List highlights = [
    'Highlight 1',
    'Highlight 2',
    'Highlight 3',
    'Highlight 4',
    'Highlight 5',
  ];
  var img = [
    Image.asset('assets/images/image_0.jpg'),
    Image.asset('assets/images/image_1.jpg'),
    Image.asset('assets/images/image_2.jpg'),
    Image.asset('assets/images/image_0.jpg'),
    Image.asset('assets/images/image_1.jpg'),
    Image.asset('assets/images/image_2.jpg'),
    Image.asset('assets/images/image_0.jpg'),
    Image.asset('assets/images/image_1.jpg'),
    Image.asset('assets/images/image_2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Text(
            'muhammadusama',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add_box_outlined,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sidebar()),
                      );
                    },
                    child: Icon(
                      Icons.table_rows_rounded,
                      size: 30,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                  child: Circle_Story(),
                ),
                Column(
                  children: [
                    Text(
                      '50',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '500',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Text(
                        '250',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Row(
                children: [
                  Text(
                    'Muhammad Usama',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text(
                    'Welcome to my profile,follow me here',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Center(
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Center(
                    child: Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 18),
                  child: Text(
                    'Story Highlights',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 6),
                  child: Text(
                    'Keep your favourite on your profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  itemCount: highlights.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return StoryClip(storyname: highlights[index]);
                  }),
            ),
            const TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.grid_on_sharp),
              ),
              Tab(
                icon: Icon(Icons.video_collection_outlined),
              ),
              Tab(
                icon: Icon(Icons.person_add),
              ),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: <Widget>[
                  SingleChildScrollView(child: Tab1Content()),
                  SizedBox(
                    height: 300,
                    child: SingleChildScrollView(child: Tab2Content()),
                  ),
                  SizedBox(
                    height: 300,
                    child: SingleChildScrollView(child: Tab3Content()),
                  ),

                  // GridView.builder(
                  //   itemBuilder: (context, index) {
                  //     return Container(color: Colors.white, child: img[index]);
                  //   },
                  //   itemCount: img.length,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 3,
                  //   ),
                  // ),
                  // Center(
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       SizedBox(
                  //           height: 50,
                  //           child: Icon(
                  //             Icons.video_collection_outlined,
                  //             size: 60,
                  //             color: Colors.white,
                  //           )),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Center(
                  //         child: Text(
                  //           'No Reel yet',
                  //           style: TextStyle(color: Colors.white),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Center(
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       SizedBox(
                  //           height: 50,
                  //           child: Icon(
                  //             Icons.person_add,
                  //             size: 60,
                  //             color: Colors.white,
                  //           )),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Center(
                  //         child: Text(
                  //           'No Tag yet',
                  //           style: TextStyle(color: Colors.white),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class Tab1Content extends StatelessWidget {
  var img = [
    Image.asset('assets/images/image_0.jpg'),
    Image.asset('assets/images/image_1.jpg'),
    Image.asset('assets/images/image_2.jpg'),
    Image.asset('assets/images/image_0.jpg'),
    Image.asset('assets/images/image_1.jpg'),
    Image.asset('assets/images/image_2.jpg'),
    Image.asset('assets/images/image_0.jpg'),
    Image.asset('assets/images/image_1.jpg'),
    Image.asset('assets/images/image_2.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        itemBuilder: (context, index) {
          return Container(color: Colors.white, child: img[index]);
        },
        itemCount: img.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
      ),
    );
  }
}

class Tab2Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                  height: 50,
                  child: Icon(
                    Icons.video_collection_outlined,
                    size: 60,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'No Reel yet',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tab3Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                  height: 50,
                  child: Icon(
                    Icons.person_add,
                    size: 60,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'No Tag yet',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
