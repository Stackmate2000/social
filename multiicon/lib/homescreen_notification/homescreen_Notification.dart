import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/colors/backgroundColor.dart';
import 'package:multiicon/colors/primaryColor.dart';
import 'package:multiicon/homescreen_notification/following_activity/activity_Containers.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiicon/homescreen_notification/liked_activity/liked_activityContainer.dart';
import 'package:multiicon/homescreen_notification/tagged_activity/tagged_activityContainers.dart';

class HomeScreenD extends StatefulWidget {
  @override
  _HomeScreenDState createState() => _HomeScreenDState();
}

class _HomeScreenDState extends State<HomeScreenD> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            color: Colors.transparent,
                            child: Text(
                              "Activity",
                              style: GoogleFonts.roboto(
                                  color: Colors.blueGrey[900],
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: ActivityContainers(),
                      ),
                      Container(
                        child: TaggedActivityContainers(),
                      ),
                      Container(
                        child: LikedActivityContainer(),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
