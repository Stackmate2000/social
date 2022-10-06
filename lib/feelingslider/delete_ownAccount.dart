import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class DeleteOwnAccount extends StatefulWidget {
  @override
  _DeleteOwnAccountState createState() => _DeleteOwnAccountState();
}

class _DeleteOwnAccountState extends State<DeleteOwnAccount> {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 320,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: GoogleFonts.roboto(
                                            color: Colors.red,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        CupertinoIcons.trash,
                                        color: Colors.grey[300],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    "Delete my account",
                                    style: GoogleFonts.roboto(
                                        color: Colors.blueGrey,
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text(
                                          "This action once used can't be undone.",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey[800],
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text(
                                          "This will permanently delete your account and all its data you added",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey[500],
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text(
                                          "Please type DELETE to confirm.",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey[500],
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.0,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100]
                                                .withOpacity(0.6),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 10.0),
                                          child: TextField(
                                            style: GoogleFonts.roboto(
                                                color: Colors.blueGrey,
                                                fontSize: 19.0,
                                                fontWeight: FontWeight.w500),
                                            decoration: InputDecoration(
                                              hintText: "Write here...",
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          _showModalBottomSheet(context);
        },
        child: Text(
          "Delete my account",
          style: GoogleFonts.roboto(
              color: Colors.grey[500],
              fontSize: 16.0,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
