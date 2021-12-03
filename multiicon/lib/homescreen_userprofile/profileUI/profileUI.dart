import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_userprofile/profileUI/savedStories.dart';
import 'package:multiicon/homescreen_userprofile/settings/profileSettings.dart';
import 'package:multiicon/homescreen_userprofile/tabBar/gallery_mainTabbar.dart';

class ProfileUI extends StatefulWidget {
  @override
  _ProfileUIState createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  bool isfollowing = false;

  _pressed() {
    setState(() {
      isfollowing = !isfollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xffFFFFFF)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffF4F6F6),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: Icon(
                                    MdiIcons.chevronLeft,
                                    color: Color(0xff000000).withOpacity(0.7),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "ekko_design",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      color: Color(0xff000000).withOpacity(0.5),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(_nextRoute());
                                },
                                child: Icon(
                                  MdiIcons.dotsHorizontal,
                                  color: Color(0xff000000).withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "1376",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color:
                                            Color(0xff000000).withOpacity(0.9),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Container(
                                  child: Text(
                                    "Followers",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color:
                                            Color(0xff000000).withOpacity(0.5),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              //image: DecorationImage(
                              //image: AssetImage("assets/work.jpg"),
                              //fit: BoxFit.cover),
                              color: Color(0xffADB3BF),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "136",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color:
                                            Color(0xff000000).withOpacity(0.9),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Container(
                                  child: Text(
                                    "Following",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color:
                                            Color(0xff000000).withOpacity(0.5),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Rovira James",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Color(0xff000000).withOpacity(0.9),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              child: Text(
                                "When I find myself in a creative block I always find it the most reenergizing to explore the way.",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Color(0xff000000).withOpacity(0.5),
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Container(
                              child: Text(
                                "UX/UI Design | Logo & Branding | Illustration",
                                style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    color: Color(0xff000000).withOpacity(0.6),
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Container(
                              child: Text(
                                "www.ekkodesigm.com",
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  color: Color(0xff937cdc),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: isfollowing
                                  ? GestureDetector(
                                      onTap: () {
                                        _pressed();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xff3190FF),
                                              width: 1.0,
                                            )),
                                        height: 30,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Following",
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff3190FF),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        _pressed();
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [
                                                Color(0xff896ae4),
                                                Color(0xff937cdc),
                                              ],
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                        ),
                                        height: 30,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: Text(
                                          "Follow",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: SavedStories(),
                      ),
                      GalleryMainTabBar(),
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

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ProfileSettings(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
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
