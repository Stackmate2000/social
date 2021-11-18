import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_userprofile/profileUI/followersView.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_userprofile/settings/profileSettings.dart';
import 'package:multiicon/homescreen_userprofile/tabBar/gallery_mainTabbar.dart';

class ProfileUI extends StatefulWidget {
  @override
  _ProfileUIState createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  bool isfollowing = false;
  int followcounter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffFFFFFF)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF4F6F6),
            ),
          ),
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(21.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/splash.jpg"),
                                  fit: BoxFit.cover),
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            "Jonasson mike",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Color(0xff000000).withOpacity(0.9),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(_nextRoute());
                            },
                            child: Icon(CupertinoIcons.settings),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: FollowersView(),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GalleryMainTabBar(),
                ],
              ),
            ),
          ),
        ],
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
