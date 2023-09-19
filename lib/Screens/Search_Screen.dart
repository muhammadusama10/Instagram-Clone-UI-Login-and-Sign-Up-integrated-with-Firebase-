import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Widget/search_widget.dart';

class Search extends StatelessWidget {
  var schimg = [
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/0.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/1.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/2.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/3.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/4.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/5.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/6.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/7.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/8.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/9.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/10.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/11.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/12.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/13.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
          child: Image.asset(
        'assets/images/14.jpg',
        fit: BoxFit.cover,
      )),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: search_widget(),
      ),
      body: GridView.builder(
        itemCount: schimg.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemBuilder: (context, index) {
          return schimg[index];
        },
      ),
    );
  }
}
