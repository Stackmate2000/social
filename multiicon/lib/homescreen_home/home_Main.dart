import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/first_image_post/firstImage_post.dart';
import 'package:multiicon/homescreen_home/multiple_Image_post.dart/multiple_Image_post.dart';
import 'package:multiicon/homescreen_home/reelscover_home/reelOne.dart';
import 'package:multiicon/homescreen_home/sharedImage_post/sharedImage_post.dart';
import 'package:multiicon/homescreen_home/stories/addStory/addStory_home.dart';
import 'package:multiicon/homescreen_home/stories/followingStories/followingStory_one.dart';
import 'package:multiicon/homescreen_home/stories/followingStories/followingStory_two.dart';
import 'package:multiicon/homescreen_home/stories/story_Main.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 70.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffF4F6F6),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff7170B8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SafeArea(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 0.0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(_nextRoute());
                                      },
                                      child: Container(
                                        child: Icon(MdiIcons.text),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "B",
                                          style: GoogleFonts.dancingScript(
                                              color: Color(0xff000000),
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        Container(
                                          child: Text(
                                            "eta",
                                            style: GoogleFonts.dancingScript(
                                                color: Color(0xff000000),
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(child: Icon(Icons.send)),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 15.0),
                          Container(
                            child: FirstImagePost(),
                          ),
                          //SizedBox(height: 15.0),

                          //ReelOne(),
                          // Container(child: SharedImage_post()),
                          SizedBox(height: 15.0),
                          Container(child: MultipleImagePost()),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => StoryMain(),
    transitionDuration: Duration(milliseconds: 3000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(-1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeIn;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      // ignore: unused_local_variable
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
