import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/addButton_bottomnav/moodCheck/moodCheck_in.dart';

class FloatingAddButton extends StatefulWidget {
  @override
  _FloatingAddButtonState createState() => _FloatingAddButtonState();
}

class _FloatingAddButtonState extends State<FloatingAddButton> {
  var isOpen = false;

  _toggleOpen() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Stack(
        children: [
          isOpen
              ? TweenAnimationBuilder(
                  duration: Duration(milliseconds: 300),
                  builder: (BuildContext context, Object _val, Widget child) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: _val),
                      child: child,
                    );
                  },
                  tween: Tween<double>(begin: 45, end: 60),
                  curve: Curves.easeIn,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width:
                          isOpen ? MediaQuery.of(context).size.width * 0.45 : 0,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff896ae4),
                              Color(0xff937cdc),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MoodCheckIn(),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Record reel',
                                      style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Color(0xff000000)
                                              .withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(8.0)),
                                      child: Icon(
                                        MdiIcons.musicNotePlus,
                                        color: Color(0xffFFFFFF),
                                        size: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Add photo',
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Color(0xff000000)
                                              .withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(8.0)),
                                      child: Icon(
                                        Icons.photo_outlined,
                                        size: 15,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  width: isOpen ? MediaQuery.of(context).size.width * 0.45 : 0,
                  height: 0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(21)),
                    color: Color(0xffFFFFFF),
                  ),
                ),
          Container(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                _toggleOpen();
              },
              child: TweenAnimationBuilder(
                duration: Duration(milliseconds: 500),
                builder: (BuildContext context, _val, child) {
                  return Container(
                    height: _val,
                    width: _val,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff896ae4).withOpacity(0.4),
                            blurRadius: 40.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 40.0))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(21.0)),
                      gradient: LinearGradient(colors: [
                        Color(0xff896ae4),
                        Color(0xff937cdc),
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                    ),
                    child: isOpen
                        ? Icon(MdiIcons.close,
                            color: Color(0xffFFFFFF), size: 22)
                        : Icon(
                            CupertinoIcons.add,
                            color: Color(0xffFFFFFF),
                            size: 22,
                          ),
                  );
                },
                tween: Tween<double>(begin: 0, end: 60),
                curve: Curves.bounceInOut,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
