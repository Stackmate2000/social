import 'package:flutter/material.dart';

class TaggedActivityActivity extends StatefulWidget {
  @override
  _TaggedActivityActivityState createState() => _TaggedActivityActivityState();
}

class _TaggedActivityActivityState extends State<TaggedActivityActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            spreadRadius: 3.0,
            blurRadius: 6.0,
            offset: Offset(6, 2),
          ),
          BoxShadow(
            color: Color.fromRGBO(225, 225, 225, 0.1),
            spreadRadius: 3.0,
            blurRadius: 6.0,
            offset: Offset(-6, -2),
          ),
        ],
        image: DecorationImage(
            image: AssetImage("assets/people.jpg"), fit: BoxFit.cover),
      ),
    );
  }
}
