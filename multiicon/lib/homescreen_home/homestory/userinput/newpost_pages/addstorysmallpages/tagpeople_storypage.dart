import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class TagPeopleStoryPages extends StatefulWidget {
  @override
  _TagPeopleStoryPagesState createState() => _TagPeopleStoryPagesState();
}

class _TagPeopleStoryPagesState extends State<TagPeopleStoryPages> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/holis.jpg"),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "_hello world_",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "hrrrika mkdkam djkk",
                      style: GoogleFonts.roboto(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
