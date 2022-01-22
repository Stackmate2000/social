import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/addButton_bottomnav/moodCheck/moodCheck_in.dart';
import 'package:multiicon/addButton_bottomnav/moodCheck/sliderFeeling.dart';
import 'package:multiicon/animation/iconButton_actionreelsbutton.dart';

const _maxHeight = 350.0;
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
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff896ae4),
                              Color(0xff937cdc),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
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
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Rate us",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Color(0xff000000).withOpacity(0.5),
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          child: Text(
                            "Share us what you think about our app.",
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Color(0xff000000).withOpacity(0.5),
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          "Rate us",
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Color(0xff000000).withOpacity(0.5),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        child: Text(
                          "Share us what you think about our app.",
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: Color(0xff000000).withOpacity(0.5),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
