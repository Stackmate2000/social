import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FloatingAddButton extends StatefulWidget {
  @override
  _FloatingAddButtonState createState() => _FloatingAddButtonState();
}

class _FloatingAddButtonState extends State<FloatingAddButton> {
  var isOpen = true;

  _toggleOpen() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
                width: isOpen ? MediaQuery.of(context).size.width * 0.45 : 0,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(21)),
                  color: Color(0xff3190FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Post a story",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Upload post",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Record a reels",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Color(0xff000000).withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.ac_unit,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Color(0xff000000).withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.access_alarm,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Color(0xff000000).withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.tv,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Positioned(
              child: GestureDetector(
                onTap: () {
                  _toggleOpen();
                },
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff46C0DE).withOpacity(0.2),
                            blurRadius: 4.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 6.0))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(21.0)),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff3190FF),
                            Color(0xff46C0DE),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Icon(
                    CupertinoIcons.add,
                    color: Color(0xffFFFFFF),
                    size: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
