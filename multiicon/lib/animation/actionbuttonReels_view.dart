import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/animation/iconButton_actionreelsbutton.dart';

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
                              Colors.cyan,
                              Color(0xff5599EE),
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
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(colors: [
            Colors.cyan,
            Color(0xff5599EE),
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.4),
                      blurRadius: 20.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 15.0))
                ],
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("assets/nigga.jpg"), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Blinding lights",
              style: GoogleFonts.montserrat(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/work.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  child: Text(
                    "The Weekend,",
                    style: GoogleFonts.montserrat(
                        color: Color(0xffFFFFFF).withOpacity(0.5),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
