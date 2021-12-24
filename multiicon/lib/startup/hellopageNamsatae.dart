import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiicon/login/login_page.dart';

class HelloPageNamsatae extends StatefulWidget {
  @override
  _HelloPageNamsataeState createState() => _HelloPageNamsataeState();
}

class _HelloPageNamsataeState extends State<HelloPageNamsatae> {
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: TweenAnimationBuilder(
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/namaste.svg",
                      color: Colors.black,
                    ),
                  ),
                  tween: Tween<double>(begin: 0.0, end: 1),
                  duration: Duration(milliseconds: 1000),
                  builder: (BuildContext context, double _val, Widget child) {
                    return Opacity(opacity: _val, child: child);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
