import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_userprofile/settings/boxstylesettings/boxsettttttings.dart';
import 'package:multiicon/homescreen_userprofile/settings/boxstylesettings/inviteFriends.dart';

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
                color: Color(0xffF4F6F6),
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
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
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InviteFriends(),
                            SizedBox(
                              height: 25.0,
                            ),
                            BoxSettings(),
                            SizedBox(
                              height: 25.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Account",
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: Text(
                                "You can control your account activity or disable your acount by clicking signout or else you can add an account if you want.",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xff000000).withOpacity(0.4),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Add account",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xff3190FF),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Log out moloiraj_baruah",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff3190FF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
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
