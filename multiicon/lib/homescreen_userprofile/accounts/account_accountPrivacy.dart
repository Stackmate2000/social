import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountAccountPrivacy extends StatefulWidget {
  @override
  _AccountAccountPrivacyState createState() => _AccountAccountPrivacyState();
}

class _AccountAccountPrivacyState extends State<AccountAccountPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: IconButton(
                        icon: Icon(MdiIcons.chevronLeft),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Accounts Privacy",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Screenshot privacy",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.start,
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
                                  onPressed: () {},
                                  child: Text(
                                    "Lock Profile",
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
                                  onPressed: () {},
                                  child: Text(
                                    "Hide your profile",
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
                                  onPressed: () {},
                                  child: Text(
                                    "Status Privacy",
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
                                  onPressed: () {},
                                  child: Text(
                                    "Blocked users",
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
                                  onPressed: () {},
                                  child: Text(
                                    "Chat seen receipt",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
