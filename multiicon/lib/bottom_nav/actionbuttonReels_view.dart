import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/addButton_bottomnav/moodCheck/moodCheck_in.dart';

class ActionButtonReelsView extends StatefulWidget {
  const ActionButtonReelsView({Key key}) : super(key: key);

  @override
  _ActionButtonReelsViewState createState() => _ActionButtonReelsViewState();
}

class _ActionButtonReelsViewState extends State<ActionButtonReelsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xff896ae4).withOpacity(0.2),
                  blurRadius: 40.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 40.0))
            ],
            borderRadius: BorderRadius.all(Radius.circular(21.0)),
            gradient: LinearGradient(colors: [
              Color(0xff896ae4),
              Color(0xff937cdc),
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          ),
          child: Icon(CupertinoIcons.music_note,
              color: Color(0xffFFFFFF), size: 22),
        ),
      ),
    );
  }
}
