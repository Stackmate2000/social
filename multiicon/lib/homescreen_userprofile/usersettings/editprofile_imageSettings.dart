import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfileImageSettings extends StatefulWidget {
  @override
  _EditProfileImageSettingsState createState() =>
      _EditProfileImageSettingsState();
}

class _EditProfileImageSettingsState extends State<EditProfileImageSettings> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 150,
        width: 150,
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
          color: Colors.purple[100].withOpacity(0.2),
          size: 60,
        ),
      ),
    );
  }
}
