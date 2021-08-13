import 'package:flutter/material.dart';

class ActivityAvatar extends StatefulWidget {
  @override
  _ActivityAvatarState createState() => _ActivityAvatarState();
}

class _ActivityAvatarState extends State<ActivityAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            decoration:
                BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
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
              image: DecorationImage(
                  image: AssetImage("assets/people.jpg"), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
