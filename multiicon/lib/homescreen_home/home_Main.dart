import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/first_image_post/firstImage_post.dart';
import 'package:multiicon/homescreen_home/multiple_Image_post.dart/multiple_Image_post.dart';
import 'package:multiicon/homescreen_home/sharedImage_post/sharedImage_post.dart';

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
              color: Color(0xffFFFFFF),
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
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: FirstImagePost(),
                        ),
                        Divider(
                          thickness: 0.5,
                          indent: 20,
                          color: Color(0xff000000).withOpacity(0.4),
                        ),
                        Container(
                          child: SharedImage_post(),
                        ),
                        Divider(
                          thickness: 0.5,
                          indent: 20,
                          color: Color(0xff000000).withOpacity(0.4),
                        ),
                        Container(
                          child: MultipleImagePost(),
                        )
                      ],
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
