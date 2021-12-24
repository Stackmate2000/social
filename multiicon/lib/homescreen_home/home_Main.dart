import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_home/first_image_post/firstImage_post.dart';
import 'package:multiicon/homescreen_home/multiple_Image_post.dart/multiple_Image_post.dart';
import 'package:multiicon/homescreen_home/searchhome/searchHome.dart';
import 'package:multiicon/homescreen_home/stories/story_Main.dart';
import 'package:multiicon/homescreen_userprofile/profileUI/profileUI.dart';

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
                                left: 15.0, right: 15.0, top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(_nextRoute());
                                  },
                                  child: Container(
                                    child: Icon(MdiIcons.text),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Morning,",
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xff000000)
                                              .withOpacity(0.5),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      width: 2.0,
                                    ),
                                    Text(
                                      "Rovira James",
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xff000000)
                                              .withOpacity(0.5),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(_profileRoute());
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(12.0),
                                          ),
                                          //image: DecorationImage(
                                          //image: AssetImage("assets/nigga.jpg"),
                                          //fit: BoxFit.cover),
                                          color: Color(0xffADB3BF),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          PageRouteBuilder(
                                              pageBuilder:
                                                  (context, animation, _) {
                                                return SearchHome();
                                              },
                                              opaque: false),
                                        );
                                      },
                                      child: Container(
                                        child: Icon(CupertinoIcons.search),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //SizedBox(height: 15.0),
                          //Container(
                          // child: FirstImagePost(),
                          //),
                          //SizedBox(height: 15.0),

                          //ReelOne(),
                          // Container(child: SharedImage_post()),
                          // SizedBox(height: 15.0),
                          // Container(child: MultipleImagePost()),
                        ],
                      ),
                    ),
                  ),
                ),
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
    transitionDuration: Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(-1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeIn;
      var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeIn));
      // ignore: unused_local_variable
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _profileRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ProfileUI(),
    transitionDuration: Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, -1.0);
      var end = Offset.zero;
      var curve = Curves.easeIn;
      var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeIn));
      // ignore: unused_local_variable
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
