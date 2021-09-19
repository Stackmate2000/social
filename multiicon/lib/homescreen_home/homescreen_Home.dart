import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/buttons/homefloatingaddPhotos.dart';
import 'package:multiicon/homescreen_home/homestory/homestoryAddstory/homescreenhome_AddStories.dart';
import 'package:multiicon/homescreen_home/homestory/homestoryUser/homescreenhome_Stories.dart';
import 'package:multiicon/homescreen_home/homestory/homestoryUser/homescreenhome_Storytwo.dart';
import 'package:multiicon/homescreen_home/postfirst/homescreenhomepostsFirst.dart';
import 'package:multiicon/homescreen_home/postsecond/homescreenhomepostsSecond.dart';
import 'package:multiicon/homescreen_home/postvideo/homescreenhome_postsVideo.dart';
import 'package:multiicon/homescreen_home/viewedstory/viewedStory_home.dart';

class HomeScreenA extends StatefulWidget {
  @override
  _HomeScreenAState createState() => _HomeScreenAState();
}

class _HomeScreenAState extends State<HomeScreenA> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Container(
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "assets/svg/logorabbit.svg",
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: -5,
                            offset: Offset(-5, -5),
                            blurRadius: 30,
                          ),
                          BoxShadow(
                              color: Colors.grey[900].withOpacity(0.3),
                              spreadRadius: 2,
                              offset: Offset(7, 7),
                              blurRadius: 20)
                        ],
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.red,
                                      Colors.purple,
                                      Colors.indigo,
                                    ],
                                  ),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                            ),
                          ),
                          Center(
                            child: Icon(
                              CupertinoIcons.envelope_fill,
                              color: Colors.blueGrey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 5.0, left: 10.0),
                        child: Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    child: HomeScreenHomeAddStories(),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Text(
                                      "Your story",
                                      style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                child: HomePageHomeStories(),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                child: HomeScreenHomeStoryTwo(),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                child: ViewedStoryHome(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey[600],
                        height: 40.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.87,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "Hey there ! Welcome to TrickyBin",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                child: Text(
                                  "When you follow people, you'll see the posts their post on this home page.",
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey[800],
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: HomeScreenHomePostsFirst(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: HomeScreenHomePostsSecond(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: HomeScreenHomePostVideo(),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, bottom: 80.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: HomeFloatingAddPhotos()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
