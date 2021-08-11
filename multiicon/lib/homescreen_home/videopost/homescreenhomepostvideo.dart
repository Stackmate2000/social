import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/videopost/reacts_captions_pum_postvideo/homescreenhome_PCS_video.dart';
import 'package:multiicon/homescreen_home/videopost/reacts_captions_pum_postvideo/homescreenhome_caption_video_White.dart';
import 'package:multiicon/homescreen_home/videopost/reacts_captions_pum_postvideo/homescreenhomevideo_Reacts.dart';
import 'package:multiicon/homescreen_home/videopost/videoposthero/homescreenhomepostvideoHero.dart';

class HomeScreenHomePostVideo extends StatefulWidget {
  @override
  _HomeScreenHomePostVideoState createState() =>
      _HomeScreenHomePostVideoState();
}

class _HomeScreenHomePostVideoState extends State<HomeScreenHomePostVideo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: HomeScreenHomePCSVideo(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  child: Hero(
                    tag: "postVideo",
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomeScreenHomePostVideoHero()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.55,
                        width: MediaQuery.of(context).size.width * 0.89,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/holi.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, bottom: 10.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.play_fill,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 3.0,
                                    ),
                                    Text(
                                      "Click to view",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
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
              Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.89,
                  child: HomeScreenHomeVideoReacts()),
              Container(
                width: MediaQuery.of(context).size.width * 0.89,
                color: Colors.white,
                child: HomeScreenHomeCaptionVideoWhite(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
