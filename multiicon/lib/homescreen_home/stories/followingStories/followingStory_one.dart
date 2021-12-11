import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/stories/followingStories/followingStory_hero_one.dart';

class FollowingStoryOne extends StatefulWidget {
  @override
  _FollowingStoryOneState createState() => _FollowingStoryOneState();
}

class _FollowingStoryOneState extends State<FollowingStoryOne> {
  modalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 160.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Mute",
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.95,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.montserrat(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        modalBottomSheet(context);
      },
      onTap: () {
        setState(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FollowingStoryHeroOne()));
        });
      },
      child: Hero(
        tag: 'storyOne',
        child: Container(
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  gradient: LinearGradient(
                      colors: [Colors.redAccent, Colors.purple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 70,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          image: DecorationImage(
                              image: AssetImage("assets/girl.jpg"),
                              fit: BoxFit.cover),
                          color: Color(0xffADB3BF),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "kylie",
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Color(0xff000000).withOpacity(0.9),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "3min ago",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Color(0xff000000).withOpacity(0.5),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
