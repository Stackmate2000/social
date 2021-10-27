import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_userprofile/profileUI/followersView.dart';

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
              color: Color(0xffFFFFFF),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            MdiIcons.chevronLeft,
                            color: Color(0xff000000).withOpacity(0.7),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              MdiIcons.bellRingOutline,
                              color: Color(0xff000000).withOpacity(0.5),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                child: Icon(
                                  MdiIcons.dotsVertical,
                                  color: Color(0xff000000).withOpacity(0.5),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/splash.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Talan Lipshutz",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Container(
                                      child: Text(
                                        "@Soloman",
                                        style: GoogleFonts.roboto(
                                            fontSize: 15,
                                            color: Color(0xff000000)
                                                .withOpacity(0.5),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          AnimatedCrossFade(
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
                            crossFadeState: isfollowing
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                            firstChild: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isfollowing = true;
                                });
                                setState(() {
                                  followcounter++;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: MediaQuery.of(context).size.width * 0.33,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Color(0xff3190FF),
                                ),
                                // ignore: deprecated_member_use
                                child: Center(
                                  child: Text(
                                    "Follow",
                                    style: GoogleFonts.roboto(
                                        fontSize: 15,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            secondChild: Row(
                              children: [
                                Icon(
                                  MdiIcons.feather,
                                  color: Color(0xff3190FF),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isfollowing = false;
                                    });
                                    setState(() {
                                      followcounter--;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: MediaQuery.of(context).size.width *
                                        0.33,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color:
                                            Color(0xff3190FF).withOpacity(0.7),
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Following",
                                        style: GoogleFonts.roboto(
                                            fontSize: 15,
                                            color: Color(0xff3190FF),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "30",
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  color: Color(0xff000000).withOpacity(0.7),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Posts",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: Color(0xff000000).withOpacity(0.7),
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "$followcounter",
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  color: Color(0xff000000).withOpacity(0.7),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Followers",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: Color(0xff000000).withOpacity(0.7),
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "260",
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  color: Color(0xff000000).withOpacity(0.7),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Following",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: Color(0xff000000).withOpacity(0.7),
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
