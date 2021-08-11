import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_home/videopost/videoposthero/homescreenhomevideoheroContent.dart';

class HomeScreenHomePostVideoHero extends StatefulWidget {
  @override
  _HomeScreenHomePostVideoHeroState createState() =>
      _HomeScreenHomePostVideoHeroState();
}

class _HomeScreenHomePostVideoHeroState
    extends State<HomeScreenHomePostVideoHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          MdiIcons.chevronLeft,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Watch",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
              Container(
                child: HomeScreenHomeVideoHeroContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
