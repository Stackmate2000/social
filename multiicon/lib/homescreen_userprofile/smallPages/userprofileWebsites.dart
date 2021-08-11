import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserprofileWebsites extends StatefulWidget {
  @override
  _UserprofileWebsitesState createState() => _UserprofileWebsitesState();
}

class _UserprofileWebsitesState extends State<UserprofileWebsites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "www.trickybin.com ...more ",
        style: GoogleFonts.roboto(
            color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w400),
      ),
    );
  }
}
