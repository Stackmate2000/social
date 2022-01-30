import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_userprofile/followfolllowerspages/userfollowersStylepage.dart';
import 'package:multiicon/homescreen_userprofile/followfolllowerspages/userfollowingStylepage.dart';

class FollowersPage extends StatefulWidget {
  @override
  _FollowersPageState createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                icon: Icon(
                  MdiIcons.chevronLeft,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: TextButton(
              onPressed: () {},
              child: Text(
                "Main username",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.cyan,
              tabs: [
                Tab(
                  child: Text(
                    "Followers",
                    style: GoogleFonts.roboto(
                        color: Colors.grey[600], fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  child: Text(
                    "Following",
                    style: GoogleFonts.roboto(
                        color: Colors.grey[600], fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [Followers(), Following()])),
    );
  }
}

class Followers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: UserFollowersStylePage(),
    );
  }
}

class Following extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: UserFollowingStylePage(),
    );
  }
}
