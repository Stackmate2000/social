import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/posts_Newpost.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/reels_Newpost.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/story_Newpost.dart';

class StoryNewPostTabBar extends StatefulWidget {
  @override
  _StoryNewPostTabBarState createState() => _StoryNewPostTabBarState();
}

class _StoryNewPostTabBarState extends State<StoryNewPostTabBar> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
            _index == 0 ? Story() : (_index == 1 ? Posts() : Reels()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 0;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: Text(
                              _index == 0 ? "Story" : "Story",
                              style: GoogleFonts.roboto(
                                fontWeight: _index == 0
                                    ? FontWeight.w500
                                    : FontWeight.w600,
                                fontSize: _index == 0 ? 15.0 : 15.0,
                                color: _index == 0
                                    ? Colors.white
                                    : Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 1;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: Text(
                              _index == 1 ? "Posts" : "Posts",
                              style: GoogleFonts.roboto(
                                fontWeight: _index == 1
                                    ? FontWeight.w500
                                    : FontWeight.w600,
                                fontSize: _index == 1 ? 15.0 : 15.0,
                                color: _index == 1
                                    ? Colors.white
                                    : Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 2;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: Text(
                              _index == 2 ? "Reels" : "Reels",
                              style: GoogleFonts.roboto(
                                fontWeight: _index == 2
                                    ? FontWeight.w500
                                    : FontWeight.w600,
                                fontSize: _index == 2 ? 15.0 : 15.0,
                                color: _index == 2
                                    ? Colors.white
                                    : Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ],
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

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StoryNewPost(),
    );
  }
}

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PostsNewPost(),
    );
  }
}

class Reels extends StatefulWidget {
  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReelsNewPost(),
    );
  }
}
