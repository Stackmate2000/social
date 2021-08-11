import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileAvatar extends StatefulWidget {
  @override
  _UserProfileAvatarState createState() => _UserProfileAvatarState();
}

class _UserProfileAvatarState extends State<UserProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Colors.indigo[400].withOpacity(0.9),
            Colors.purple[800].withOpacity(0.8)
          ],
        ),
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
      ),
      child: Container(
        child: Icon(
          CupertinoIcons.camera,
          color: Colors.purple[100].withOpacity(0.2),
          size: 30,
        ),
      ),
    );
  }
}
