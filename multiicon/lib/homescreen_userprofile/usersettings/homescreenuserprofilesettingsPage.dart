import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/colors/backgroundColor.dart';
import 'package:multiicon/homescreen_userprofile/accounts/account_accountPrivacy.dart';
import 'package:multiicon/homescreen_userprofile/settingspages/userprofilesettingsAccount.dart';
import 'package:multiicon/homescreen_userprofile/settingspages/userprofilesettingsActivity.dart';
import 'package:multiicon/homescreen_userprofile/settingspages/userprofilesettingsSave.dart';
import 'package:multiicon/homescreen_userprofile/settingspages/userprofilesettingshelpandSupport.dart';
import 'package:multiicon/homescreen_userprofile/usersettings/delete_accountSettings.dart';
import 'package:multiicon/homescreen_userprofile/usersettings/edit_profileSettings.dart';
import 'package:multiicon/homescreen_userprofile/usersettings/editprofile_imageSettings.dart';
import 'package:multiicon/homescreen_userprofile/usersettings/signOut.dart';

class HomeScreenUserProfileSettingsPage extends StatefulWidget {
  @override
  _HomeScreenUserProfileSettingsPageState createState() =>
      _HomeScreenUserProfileSettingsPageState();
}

class _HomeScreenUserProfileSettingsPageState
    extends State<HomeScreenUserProfileSettingsPage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topRight,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 400,
                      left: 150,
                      child: Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(
                          color: backgroundColor.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    height: 200,
                                    color: Colors.transparent,
                                    alignment: Alignment.centerRight,
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: EditProfileImageSettings(),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Container(
                                  // height: MediaQuery.of(context).size.height * 0.35,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Colors.grey[400].withOpacity(0.7),
                                          blurRadius: 6.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0.0, 6.0))
                                    ],
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        child: EditProfileSettings(),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              UserProfileSettingsAccount()));
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Colors.grey[400].withOpacity(0.7),
                                          blurRadius: 6.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0.0, 6.0))
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              child: Text(
                                                "Accounts",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.blueGrey,
                                                    fontSize: 19.0,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              child: Text(
                                                "Change account details",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.grey[500],
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          child: Icon(
                                            MdiIcons.keyVariant,
                                            size: 70.0,
                                            color: Colors.grey[100],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                child: UserProfileSettingsActivity(),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              UserProfileSettingsSave()));
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Colors.grey[400].withOpacity(0.7),
                                          blurRadius: 6.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0.0, 6.0))
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              child: Text(
                                                "Saved ",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.blueGrey,
                                                    fontSize: 19.0,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              child: Text(
                                                "Save History",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.grey[500],
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          child: Icon(
                                            MdiIcons.bookmarkOutline,
                                            size: 70.0,
                                            color: Colors.grey[100],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              UserProfileSettingsHelpandSupport()));
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Colors.grey[400].withOpacity(0.7),
                                          blurRadius: 6.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0.0, 6.0))
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              child: Text(
                                                "Help and Support",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.blueGrey,
                                                    fontSize: 19.0,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              child: Text(
                                                "Help us with your suggestions",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.grey[500],
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          child: Icon(
                                            MdiIcons.chatQuestion,
                                            size: 70.0,
                                            color: Colors.grey[100],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Colors.grey[400].withOpacity(0.7),
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Disabled",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.blueGrey,
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Dark Mode",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.grey[500],
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Switch(
                                            activeColor: Colors.purple[800],
                                            value: status,
                                            onChanged: (value) {
                                              print(
                                                "VALUE : $value",
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                child: SignOut(),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(child: DeleteAccountSettings()),
                              SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Container(
                                  child: Text(
                                    "Version 1.0.0",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[500],
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[500].withOpacity(0.7),
                                blurRadius: 6.0,
                                offset: Offset(0.0, 6.0))
                          ]),
                      child: Icon(
                        CupertinoIcons.arrow_left,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
