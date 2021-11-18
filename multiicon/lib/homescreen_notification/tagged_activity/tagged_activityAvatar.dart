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
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              image: DecorationImage(
                  image: AssetImage("assets/work.jpg"), fit: BoxFit.cover),
              color: Color(0xffADB3BF),
            ),
          ),
        ],
      ),
    );
  }
}
