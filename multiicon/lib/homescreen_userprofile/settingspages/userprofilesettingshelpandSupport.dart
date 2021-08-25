import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_userprofile/help_and_support/helpCenter.dart';
import 'package:multiicon/homescreen_userprofile/help_and_support/rateUs.dart';
import 'package:multiicon/homescreen_userprofile/help_and_support/reportProblem.dart';

class UserProfileSettingsHelpandSupport extends StatefulWidget {
  @override
  _UserProfileSettingsHelpandSupportState createState() =>
      _UserProfileSettingsHelpandSupportState();
}

class _UserProfileSettingsHelpandSupportState
    extends State<UserProfileSettingsHelpandSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        MdiIcons.chevronLeft,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Help and Support",
                          style: GoogleFonts.roboto(
                              color: Colors.blueGrey,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HelpCenter()));
                              },
                              child: Text(
                                "Help center",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                          IconButton(
                              icon: Icon(MdiIcons.chevronRight),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HelpCenter()));
                              })
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Support box",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                          IconButton(
                              icon: Icon(MdiIcons.chevronRight),
                              onPressed: () {})
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReportProblem()));
                              },
                              child: Text(
                                "Report a problem",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                          IconButton(
                              icon: Icon(MdiIcons.chevronRight),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReportProblem()));
                              })
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RateUs()));
                              },
                              child: Text(
                                "Rate us",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                          IconButton(
                              icon: Icon(MdiIcons.chevronRight),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RateUs()));
                              })
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Terms & Policies",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                          IconButton(
                              icon: Icon(MdiIcons.chevronRight),
                              onPressed: () {})
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
