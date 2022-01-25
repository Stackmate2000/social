import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/addButton_bottomnav/moodCheck/moodCheck_in.dart';
import 'package:multiicon/addButton_bottomnav/moodCheck/sliderFeeling.dart';
import 'package:multiicon/animation/iconButton_actionreelsbutton.dart';

const _maxHeight = 450.0;
const _minHeight = 60.0;

class FloatingAddButton extends StatefulWidget {
  @override
  _FloatingAddButtonState createState() => _FloatingAddButtonState();
}

class _FloatingAddButtonState extends State<FloatingAddButton>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  bool _expanded = false;
  double _currentHeight = _minHeight;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuWidth = 60;
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onVerticalDragUpdate: _expanded
              ? (details) {
                  setState(() {
                    final newHeight = _currentHeight - details.delta.dy;
                    _controller.value = _currentHeight / _maxHeight;
                    _currentHeight = newHeight.clamp(_minHeight, _maxHeight);
                  });
                }
              : null,
          onVerticalDragEnd: _expanded
              ? (details) {
                  if (_currentHeight < _maxHeight / 1.5) {
                    _controller.reverse();
                    _expanded = false;
                  } else {
                    _expanded = true;
                    _controller.forward(from: _currentHeight / _maxHeight);
                    _currentHeight = _maxHeight;
                  }
                }
              : null,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, snapshot) {
              final value = ElasticInOutCurve(0.7).transform(_controller.value);
              return Stack(
                children: [
                  Positioned(
                    bottom: lerpDouble(13.0, 0.0, value),
                    width: lerpDouble(menuWidth, size.width, value),
                    height: lerpDouble(_minHeight, _currentHeight, value),
                    left: lerpDouble(size.width / 2 - menuWidth / 2, 0, value),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF4F6F6),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(
                            lerpDouble(20.0, 30.0, value),
                          ),
                          bottom: Radius.circular(
                            lerpDouble(20.0, 0.0, value),
                          ),
                        ),
                      ),
                      child: _expanded
                          ? Opacity(
                              opacity: _controller.value,
                              child: _buildExpandedContent(),
                            )
                          : _buildMenuContent(),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildMenuContent() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _expanded = true;
          _currentHeight = _maxHeight;
          _controller.forward(from: 0.0);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          gradient: LinearGradient(colors: [
            Color(0xff896ae4),
            Color(0xff937cdc),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _expanded = true;
              _currentHeight = _maxHeight;
              _controller.forward(from: 0.0);
            });
          },
          child: Icon(
            CupertinoIcons.add,
            color: Color(0xffFFFFFF),
            size: 22,
          ),
        ),
      ),
    );
  }

  Widget _buildExpandedContent() {
    return Container(
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff896ae4),
                                  Color(0xff937cdc),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.1),
                                  blurRadius: 40.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 30.0))
                            ],
                          ),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.heart_fill,
                                    color: Colors.redAccent,
                                    size: 30.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Favourite lists",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 18,
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 5.0),
                                      Text(
                                        "Select the type of activities you like to have",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 12,
                                            color: Color(0xffFFFFFF)
                                                .withOpacity(0.8),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    child: Icon(
                                      MdiIcons.image,
                                      size: 40,
                                      color: Color(0xff000000).withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff000000)
                                              .withOpacity(0.3),
                                          blurRadius: 40.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(30.0, 30.0))
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30.0),
                                      topLeft: Radius.circular(30.0),
                                    ),
                                  ),
                                  height: 110,
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Add photo",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            "Add some of your photo for you friends and others.",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                color: Color(0xff000000)
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20.0),
                                  child: Container(
                                    child: Icon(
                                      CupertinoIcons.music_note,
                                      size: 40,
                                      color: Color(0xff000000).withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff000000)
                                              .withOpacity(0.3),
                                          blurRadius: 40.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(30.0, 30.0))
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30.0),
                                      topLeft: Radius.circular(30.0),
                                    ),
                                  ),
                                  height: 110,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Reels",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            "Share some of your contents.",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                color: Color(0xff000000)
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
        ],
      ),
    );
  }
}
