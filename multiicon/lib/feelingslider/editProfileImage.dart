import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfileImage extends StatefulWidget {
  @override
  _EditProfileImageState createState() => _EditProfileImageState();
}

class _EditProfileImageState extends State<EditProfileImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Colors.indigo[400].withOpacity(0.9),
              Colors.purple[800].withOpacity(0.8)
            ],
          ),
        ),
        child: Icon(
          CupertinoIcons.camera,
          color: Colors.purple[100].withOpacity(0.4),
          size: 60,
        ),
      ),
    );
  }
}
