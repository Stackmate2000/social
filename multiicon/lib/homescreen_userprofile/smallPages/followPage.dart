import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_userprofile/followfolllowerspages/followersPage.dart';
import 'package:multiicon/homescreen_userprofile/smallPages/userprofileBio.dart';
import 'package:multiicon/homescreen_userprofile/smallPages/userprofileWebsites.dart';
import 'package:multiicon/homescreen_userprofile/usersettings/userProfile_avatar.dart';

class FollowPage extends StatefulWidget {
  @override
  _FollowPageState createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  bool isfollowing = false;
  int followcounter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(child: UserProfileAvatar()),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "1",
                              style: GoogleFonts.roboto(
                                color: Colors.blueGrey[900],
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("Posts",
                                style: GoogleFonts.roboto(
                                    color: Colors.blueGrey[900],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        VerticalDivider(
                          thickness: 0.5,
                          color: Colors.blueGrey[900],
                          indent: 35.0,
                          endIndent: 35.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FollowersPage()));
                              },
                              child: Text(
                                "$followcounter",
                                style: GoogleFonts.roboto(
                                  color: Colors.blueGrey[900],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FollowersPage()));
                              },
                              child: Text("Followers",
                                  style: GoogleFonts.roboto(
                                      color: Colors.blueGrey[900],
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          thickness: 0.5,
                          color: Colors.blueGrey[900],
                          indent: 35.0,
                          endIndent: 35.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FollowersPage()));
                              },
                              child: Text(
                                "1",
                                style: GoogleFonts.roboto(
                                  color: Colors.blueGrey[900],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FollowersPage()));
                              },
                              child: Text(
                                "Following",
                                style: GoogleFonts.roboto(
                                    color: Colors.blueGrey[900],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: GoogleFonts.roboto(
                      color: Colors.blueGrey[900].withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Container(
                    child: UserProfileBio(),
                  ),
                ),
                Container(
                  child: UserprofileWebsites(),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 0),
                reverseDuration: Duration(milliseconds: 0),
                crossFadeState: isfollowing
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstChild: Container(
                  height: 32,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.blue[600],
                  ),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        isfollowing = true;
                      });
                      setState(() {
                        followcounter++;
                      });
                    },
                    child: Text(
                      "Follow",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                secondChild: Container(
                  height: 28,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        isfollowing = false;
                      });
                      setState(() {
                        followcounter--;
                      });
                    },
                    child: Text(
                      "Unfollow",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
