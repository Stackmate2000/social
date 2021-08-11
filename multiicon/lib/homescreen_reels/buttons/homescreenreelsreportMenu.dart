import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenReelsReportMenu extends StatefulWidget {
  @override
  _HomeScreenReelsReportMenuState createState() =>
      _HomeScreenReelsReportMenuState();
}

class _HomeScreenReelsReportMenuState extends State<HomeScreenReelsReportMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Report",
          style: GoogleFonts.roboto(
              color: Colors.red, fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
