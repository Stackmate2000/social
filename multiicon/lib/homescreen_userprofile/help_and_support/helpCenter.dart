import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/cupertino.dart';

class HelpCenter extends StatefulWidget {
  @override
  _HelpCenterState createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Icon(
                            MdiIcons.chevronLeft,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: Text(
                          "Hello there,",
                          style: GoogleFonts.roboto(
                              color: Colors.blueGrey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "Christina",
                        style: GoogleFonts.roboto(
                            color: Colors.blueGrey[900],
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "How may I help you?",
                        style: GoogleFonts.roboto(
                            color: Colors.blueGrey,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 50.0),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: TweenAnimationBuilder(
                            curve: Curves.easeIn,
                            duration: Duration(milliseconds: 700),
                            tween: Tween<double>(begin: 0, end: 300),
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Container(
                                width: _val,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                child: TextField(
                                  decoration: InputDecoration(
                                    fillColor:
                                        Colors.grey[200].withOpacity(0.5),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    isDense: true,
                                    hintText: "Search",
                                    hintStyle: GoogleFonts.roboto(
                                        color: Colors.grey[600],
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    prefixIcon: Icon(Icons.search),
                                  ),
                                ),
                              );
                            },
                          ),
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
