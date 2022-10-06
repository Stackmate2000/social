import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/addButton_bottomnav/moodCheck/mood_checkinResults.dart';
import 'package:multiicon/addButton_bottomnav/moodCheck/selectActivity.dart';

class MoodCheckIn extends StatefulWidget {
  @override
  _MoodCheckInState createState() => _MoodCheckInState();
}

class _MoodCheckInState extends State<MoodCheckIn> {
  modalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.95,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff896ae4),
                Color(0xff937cdc),
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
                SafeArea(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: PageView(
                      children: [
                        SelectAvtivity(),
                        MoodCheckInResults(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        modalBottomSheet(context);
      },
      child: Container(
        child: Row(
          children: [
            Text(
              'Mood check-in',
              style: GoogleFonts.karla(
                  fontSize: 20,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: Color(0xff000000).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Icon(
                MdiIcons.pencil,
                color: Color(0xffFFFFFF),
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
