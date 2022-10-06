import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomescreenReelsSocialShare extends StatefulWidget {
  @override
  _HomescreenReelsSocialShareState createState() =>
      _HomescreenReelsSocialShareState();
}

class _HomescreenReelsSocialShareState
    extends State<HomescreenReelsSocialShare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Icon(
                    MdiIcons.feather,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Chat",
                  style: GoogleFonts.roboto(
                      color: Colors.black, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.lightGreenAccent[400],
                  child: Icon(
                    MdiIcons.plusCircleOutline,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Your story",
                  style: GoogleFonts.roboto(
                      color: Colors.black, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: SvgPicture.asset(
                      "assets/svg/phone.svg",
                      fit: BoxFit.cover,
                    )),
                Text(
                  "SMS",
                  style: GoogleFonts.roboto(
                      color: Colors.black, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.green,
                    child: SvgPicture.asset(
                      "assets/svg/whatsapp.svg",
                      fit: BoxFit.contain,
                      color: Colors.white,
                    )),
                Text(
                  "WhatsApp",
                  style: GoogleFonts.roboto(
                      color: Colors.black, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.indigo,
                    child: SvgPicture.asset(
                      "assets/svg/facebook.svg",
                      fit: BoxFit.cover,
                      color: Colors.white,
                    )),
                Text(
                  "Facebook",
                  style: GoogleFonts.roboto(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
