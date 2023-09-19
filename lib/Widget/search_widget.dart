import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search_widget extends StatelessWidget {
  final txtCnt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 30,
      child: TextField(
        controller: txtCnt,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            fillColor: Colors.grey.shade700,
            filled: true,
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey),
            constraints: BoxConstraints.tightFor(width: 327, height: 60),
            prefixIconColor: Colors.white,
            prefixIcon: Icon(
              Icons.search_outlined,
              color: Colors.grey,
            )),
      ),
    );
  }
}
