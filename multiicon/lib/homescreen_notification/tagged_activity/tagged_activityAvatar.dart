import 'package:flutter/material.dart';

class TaggedActivityAvatar extends StatefulWidget {
  @override
  _TaggedActivityAvatarState createState() => _TaggedActivityAvatarState();
}

class _TaggedActivityAvatarState extends State<TaggedActivityAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.purple,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
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
          ),
        ],
      ),
    );
  }
}
