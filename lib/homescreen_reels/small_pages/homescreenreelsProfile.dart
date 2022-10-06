import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenReelsProfile extends StatefulWidget {
  @override
  _HomeScreenReelsProfileState createState() => _HomeScreenReelsProfileState();
}

class _HomeScreenReelsProfileState extends State<HomeScreenReelsProfile> {
  bool isfollowing = false;

  _pressed() {
    setState(() {
      isfollowing = !isfollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              image: DecorationImage(
                  image: AssetImage("assets/girl.jpg"), fit: BoxFit.cover),
              color: Color(0xffADB3BF),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: Text(
                "@username",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            child: CircleAvatar(
              radius: 1.5,
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            child: isfollowing
                ? InkWell(
                    onTap: () {
                      _pressed();
                    },
                    child: Text(
                      "Following",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                : InkWell(
                    onTap: () {
                      _pressed();
                    },
                    child: Text(
                      "Follow",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
