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
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/splash.jpg"),
              ),
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
