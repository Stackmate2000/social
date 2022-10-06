import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/stories/upload/uploadTabbar.dart';

class UploadRandom extends StatefulWidget {
  const UploadRandom({Key key}) : super(key: key);

  @override
  _UploadRandomState createState() => _UploadRandomState();
}

class _UploadRandomState extends State<UploadRandom> {
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
                child: UploadMain(),
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
                        center: FractionalOffset(-0.95, 0.00),
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

class UploadMain extends StatefulWidget {
  const UploadMain({Key key}) : super(key: key);

  @override
  _UploadMainState createState() => _UploadMainState();
}

class _UploadMainState extends State<UploadMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff000000),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            color: Color(0xffFFFFFF).withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.clear,
                            color: Color(0XFFffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          UploadTabBar(),
        ],
      ),
    );
  }
}
