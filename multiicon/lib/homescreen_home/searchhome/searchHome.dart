import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/searchhome/searchPage_main.dart';

class SearchHome extends StatefulWidget {
  const SearchHome({Key key}) : super(key: key);

  @override
  _SearchHomeState createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: 1000),
              child: Container(
                child: SearchPageMain(),
              ),
              builder: (context, value, child) {
                return ShaderMask(
                    // ignore: missing_return
                    shaderCallback: (rect) {
                      return RadialGradient(
                        radius: value * 5,
                        colors: [
                          Colors.white,
                          Colors.white,
                          Colors.transparent,
                          Colors.transparent
                        ],
                        stops: [0.0, 0.55, 0.0, 1.0],
                        center: FractionalOffset(0.95, 0.00),
                      ).createShader(rect);
                    },
                    child: child);
              },
            ),
          );
        },
      ),
    );
  }
}
