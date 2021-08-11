import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_userprofile/accounts/account_accountPrivacy.dart';

class UserProfileSettingsAccount extends StatefulWidget {
  @override
  _UserProfileSettingsAccountState createState() =>
      _UserProfileSettingsAccountState();
}

class _UserProfileSettingsAccountState
    extends State<UserProfileSettingsAccount> {
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
              color: Colors.white,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFffffff),
                            offset: Offset(-5, -5),
                            blurRadius: 5),
                        BoxShadow(
                            color: Color(0xFFbebebe),
                            offset: Offset(5, 5),
                            blurRadius: 5),
                      ],
                    ),
                    child: Icon(
                      MdiIcons.chevronLeft,
                      color: Colors.blueGrey,
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
                          "Accounts",
                          style: GoogleFonts.roboto(
                              color: Colors.blueGrey,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 50.0),
                          child: Text(
                            "The account settings of TrickyBin lets you can set your accounts privacy as you want.",
                            style: GoogleFonts.roboto(
                                color: Colors.blueGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
