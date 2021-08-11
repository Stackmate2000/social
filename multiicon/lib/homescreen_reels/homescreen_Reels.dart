import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_reels/reelspages/followingReels_page.dart';
import 'package:multiicon/homescreen_reels/reelspages/foryouReels_page.dart';
import 'package:multiicon/homescreen_userprofile/followfolllowerspages/followersPage.dart';

class HomeScreenC extends StatefulWidget {
  @override
  _HomeScreenCState createState() => _HomeScreenCState();
}

class _HomeScreenCState extends State<HomeScreenC> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
            _index == 0 ? FollowingReels() : ForYouReels(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Colors.transparent,
                    child: SafeArea(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _index = 0;
                                  });
                                },
                                child: Container(
                                  child: Text(
                                    "following",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        color: _index == 0
                                            ? Colors.white
                                            : Colors.grey[300],
                                        fontWeight: _index == 0
                                            ? FontWeight.w500
                                            : FontWeight.w400),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                width: 20.0,
                                color: Colors.white,
                                indent: 13,
                                endIndent: 13,
                                thickness: 1.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _index = 1;
                                  });
                                },
                                child: Container(
                                  child: Text(
                                    "For You",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        color: _index == 1
                                            ? Colors.white
                                            : Colors.grey[300],
                                        fontWeight: _index == 1
                                            ? FontWeight.w500
                                            : FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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

class FollowingReels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FollowingReelsPage(),
    );
  }
}

class ForYouReels extends StatefulWidget {
  @override
  _ForYouReelsState createState() => _ForYouReelsState();
}

class _ForYouReelsState extends State<ForYouReels> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ForYouReelsPage(),
    );
  }
}
