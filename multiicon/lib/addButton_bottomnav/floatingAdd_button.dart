import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/addButton_bottomnav/selectActivity.dart';

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
      padding: const EdgeInsets.only(bottom: 8.0),
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
                        color: Color(0xff32C1E0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(_nextRoute());
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Mood check-in',
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
                                        MdiIcons.pencil,
                                        color: Color(0xffFFFFFF),
                                        size: 15,
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
                            color: Color(0xff32C1E0).withOpacity(0.1),
                            blurRadius: 4.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 6.0))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(21.0)),
                      color: Color(0xff32C1E0),
                    ),
                    child: isOpen
                        ? Icon(MdiIcons.close,
                            color: Color(0xffFFFFFF), size: 22)
                        : Icon(
                            CupertinoIcons.add,
                            color: Color(0xffFFFFFF),
                            size: 22,
                          )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SelectActivity(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeIn;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      // ignore: unused_local_variable
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
