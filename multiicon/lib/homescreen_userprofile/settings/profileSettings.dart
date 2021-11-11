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
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  MdiIcons.chevronLeft,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff896ae4),
                                          Color(0xff937cdc),
                                        ],
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff000000)
                                              .withOpacity(0.1),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0.0, 6.0))
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.camera,
                                          color: Color(0xff000000)
                                              .withOpacity(0.1),
                                          size: 100,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, bottom: 10.0),
                                          child: Container(
                                            child: Text(
                                              "Add image",
                                              style: GoogleFonts.karla(
                                                fontSize: 16,
                                                color: Color(0xffFFFFFF),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
                                              "Privacy",
                                              style: GoogleFonts.karla(
                                                  color: Color(0xff000000),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
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
                                              style: GoogleFonts.karla(
                                                  color: Color(0xff000000),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
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
                                "Account",
                                style: GoogleFonts.karla(
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w600,
                                ),
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
                                style: GoogleFonts.karla(
                                    color: Color(0xff3190FF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  child: SignOut(),
                                ),
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
