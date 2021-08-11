import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MusicNamePages extends StatefulWidget {
  @override
  _MusicNamePagesState createState() => _MusicNamePagesState();
}

class _MusicNamePagesState extends State<MusicNamePages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/holis.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "musicname",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "music decription",
                    style: GoogleFonts.roboto(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
              icon: Icon(
                CupertinoIcons.play_circle_fill,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
