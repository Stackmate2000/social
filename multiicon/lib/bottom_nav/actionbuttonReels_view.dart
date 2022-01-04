import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/bottom_nav/iconButton_actionreelsbutton.dart';

const _maxHeight = 350.0;
const _minHeight = 60.0;

class ActionButtonReelsView extends StatefulWidget {
  const ActionButtonReelsView({Key key}) : super(key: key);

  @override
  _ActionButtonReelsViewState createState() => _ActionButtonReelsViewState();
}

class _ActionButtonReelsViewState extends State<ActionButtonReelsView>
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
                          top: Radius.circular(20),
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
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
          child: Musicvisitualizer(),
        ),
      ),
    );
  }

  Widget _buildExpandedContent() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 60.0,
              width: 60.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "unknown",
              style: GoogleFonts.montserrat(
                  color: Color(0xffFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Morning,",
              style: GoogleFonts.montserrat(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
