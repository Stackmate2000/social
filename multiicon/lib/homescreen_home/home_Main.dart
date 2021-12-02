import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_home/first_image_post/firstImage_post.dart';
import 'package:multiicon/homescreen_home/multiple_Image_post.dart/multiple_Image_post.dart';
import 'package:multiicon/homescreen_home/stories/story_Main.dart';
import 'package:multiicon/homescreen_home/uploadStyle_two/uploadStyle_two.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animController;
  bool isforward = false;
  @override
  void initState() {
    super.initState();

    animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    final curvedAnimation =
        CurvedAnimation(parent: animController, curve: Curves.easeOutExpo);

    animation = Tween<double>(begin: 0, end: 150).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
  }

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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "HI, Rovira James",
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xff000000)
                                              .withOpacity(0.5),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Container(
                                      child: Text(
                                        "Thursday,02",
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xff000000)
                                                .withOpacity(0.7),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage("assets/work.jpg"),
                                        fit: BoxFit.cover),
                                    color: Color(0xffADB3BF),
                                  ),
                                ),
                              ],
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
                          SizedBox(height: 15.0),

                          Container(child: UploadStyleTwo()),
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
