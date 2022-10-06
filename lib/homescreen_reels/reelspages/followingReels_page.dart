import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class FollowingReelsPage extends StatefulWidget {
  @override
  _FollowingReelsPageState createState() => _FollowingReelsPageState();
}

class _FollowingReelsPageState extends State<FollowingReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                child: Text(
                  "Follow a profile to see their latest videos here.",
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
