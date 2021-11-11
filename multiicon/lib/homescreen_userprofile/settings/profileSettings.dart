import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_userprofile/settings/boxstylesettings/boxsettttttings.dart';
import 'package:multiicon/homescreen_userprofile/settings/boxstylesettings/inviteFriends.dart';
import 'package:multiicon/homescreen_userprofile/settings/signOut.dart';

class ProfileSettings extends StatefulWidget {
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Container(
                            child: Text(
                              "Settings",
                              style: GoogleFonts.roboto(
                                  color: Color(0xff000000),
                                  letterSpacing: 0.1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            CupertinoIcons.settings,
                                            color: Color(0xff000000)
                                                .withOpacity(0.9),
                                          ),
                                        ),
                                        Container(
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Notifications",
                                              style: GoogleFonts.roboto(
                                                  color: Color(0xff000000),
                                                  letterSpacing: 0.3,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Icon(
                                        MdiIcons.chevronRight,
                                        color:
                                            Color(0xff000000).withOpacity(0.2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            CupertinoIcons.settings,
                                            color: Color(0xff000000)
                                                .withOpacity(0.9),
                                          ),
                                        ),
                                        Container(
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Privacy",
                                              style: GoogleFonts.roboto(
                                                  color: Color(0xff000000),
                                                  letterSpacing: 0.3,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Icon(
                                        MdiIcons.chevronRight,
                                        color:
                                            Color(0xff000000).withOpacity(0.2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            CupertinoIcons.settings,
                                            color: Color(0xff000000)
                                                .withOpacity(0.9),
                                          ),
                                        ),
                                        Container(
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Security",
                                              style: GoogleFonts.roboto(
                                                  color: Color(0xff000000),
                                                  letterSpacing: 0.3,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Icon(
                                        MdiIcons.chevronRight,
                                        color:
                                            Color(0xff000000).withOpacity(0.2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            InviteFriends(),
                            SizedBox(
                              height: 15.0,
                            ),
                            BoxSettings(),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: Text(
                                "Account Center",
                                style: GoogleFonts.roboto(
                                    color: Color(0xff000000),
                                    letterSpacing: 0.1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: Text(
                                "You can control your account activity or disable your acount by clicking signout or else you can add an account if you want.",
                                style: GoogleFonts.roboto(
                                    color: Color(0xff000000).withOpacity(0.4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: Text(
                                "Add account",
                                style: GoogleFonts.roboto(
                                    color: Color(0xff3190FF),
                                    letterSpacing: 0.1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                child: SignOut(),
                              ),
                            ),
                          ],
                        ),
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
