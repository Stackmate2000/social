import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                  tween: Tween<double>(begin: 50, end: 60),
                  curve: Curves.easeIn,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width:
                          isOpen ? MediaQuery.of(context).size.width * 0.40 : 0,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xff3190FF),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Color(0xff000000).withOpacity(0.2)),
                            child: Icon(
                              Icons.zoom_in,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Color(0xff000000).withOpacity(0.2)),
                            child: Icon(
                              Icons.hearing_outlined,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Color(0xff000000).withOpacity(0.2)),
                            child: Icon(
                              Icons.radio,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
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
