import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/stories/addStory/leftCorner_mediabuttons/storyMedia_buttons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
          color: Color(0xff000000),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff000000),
                // image: DecorationImage(
                //   image: AssetImage("assets/splash.jpg"),
                // fit: BoxFit.cover,
                // ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            CupertinoIcons.chevron_left,
                            color: Color(0xffFFFFFF).withOpacity(0.9),
                          ),
                        ),
                        Text(
                          "Add to story",
                          style: GoogleFonts.roboto(
                              color: Color(0xffFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            MdiIcons.cogOutline,
                            color: Color(0xffFFFFFF).withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: StoryMediaButtons(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
