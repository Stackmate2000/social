import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/stories/addStory/leftCorner_mediabuttons/storyMedia_buttons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_home/stories/addStory/uploadstorytypes/storyTypes.dart';

class UserInputMain extends StatefulWidget {
  @override
  _UserInputMainState createState() => _UserInputMainState();
}

class _UserInputMainState extends State<UserInputMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffF4F6F6),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffF4F6F6),
              ),
              // image: DecorationImage(
              //   image: AssetImage("assets/splash.jpg"),
              // fit: BoxFit.cover,
              // ),
              //),
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            CupertinoIcons.chevron_left,
                            color: Color(0xff000000).withOpacity(0.5),
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: Text(
                                "Start a feed",
                                style: GoogleFonts.montserrat(
                                  fontSize: 38,
                                  color: Color(0xff000000).withOpacity(0.1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: Container(
                                child: Text(
                                  "Add your feed with powerful categories and beautiful themes.",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff000000).withOpacity(0.5),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            StoryTypes(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
