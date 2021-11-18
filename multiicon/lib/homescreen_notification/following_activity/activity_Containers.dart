import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_notification/following_activity/activity_Activity.dart';
import 'package:multiicon/homescreen_notification/following_activity/activity_Avatar.dart';

class ActivityContainers extends StatefulWidget {
  @override
  _ActivityContainersState createState() => _ActivityContainersState();
}

class _ActivityContainersState extends State<ActivityContainers> {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 250.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomLeft,
                              colors: [Colors.red[800], Colors.red[400]],
                            ),
                          ),
                          child: Icon(
                            CupertinoIcons.trash_fill,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Delete",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomLeft,
                              colors: [Colors.grey[500], Colors.grey[500]],
                            ),
                          ),
                          child: Icon(
                            CupertinoIcons.xmark_circle_fill,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Remove follower",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [Colors.red[800], Colors.purple[800]],
                            ),
                          ),
                          child: Icon(
                            CupertinoIcons.exclamationmark_bubble,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Block this user",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        _showModalBottomSheet(context);
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                alignment: Alignment.center,
                child: ActivityAvatar(),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Rovira james",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Color(0xff000000).withOpacity(0.9),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "followed you,checkout his profile.",
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "9 Jul 2021,11.34 PM ",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff000000),
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Container(
                child: Activityactivity(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
