import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/startup/hellopageNamsatae.dart';

class HelloPage extends StatefulWidget {
  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HelloPageNamsatae()));
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
                  borderRadius: BorderRadius.all(Radius.circular(16))),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: TweenAnimationBuilder(
                  child: Text(
                    "Hello",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
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
