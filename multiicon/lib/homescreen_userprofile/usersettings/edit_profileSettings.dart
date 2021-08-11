import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class EditProfileSettings extends StatefulWidget {
  @override
  _EditProfileSettingsState createState() => _EditProfileSettingsState();
}

class _EditProfileSettingsState extends State<EditProfileSettings> {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.indigo[400],
                    Colors.purple[800],
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, right: 30.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.indigo[200],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 100.0, left: 30.0, right: 30.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                                "Do you want to change your email address and username?",
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                                "Changing email address is permanent and you'll have to sign in with new email address to go forward whereas username is ok.",
                                style: GoogleFonts.roboto(
                                    color: Colors.purple[100].withOpacity(0.6),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple[900].withOpacity(0.7),
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                                offset: Offset(0.0, 6.0))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Text(
                          "Yes, change my email",
                          style: GoogleFonts.roboto(
                              color: Colors.purple[800],
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  "Change account profile",
                  style: GoogleFonts.roboto(
                      color: Colors.blueGrey,
                      fontSize: 19.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showModalBottomSheet(context);
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300].withOpacity(0.7),
                          blurRadius: 6.0,
                          spreadRadius: 2.0,
                          offset: Offset(0.0, 6.0))
                    ],
                  ),
                  child: Icon(
                    CupertinoIcons.arrow_2_circlepath,
                    color: Colors.grey[500],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.grey[100].withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextField(
                    style: GoogleFonts.roboto(
                        color: Colors.blueGrey,
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      hintText: "Christin",
                      hintStyle: GoogleFonts.roboto(
                        color: Colors.grey[500],
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.transparent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.grey[100].withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextField(
                    style: GoogleFonts.roboto(
                        color: Colors.blueGrey,
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      hintText: "trickybin123@gmailajsdlknlskl.com",
                      hintStyle: GoogleFonts.roboto(
                        color: Colors.grey[500],
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.transparent,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
