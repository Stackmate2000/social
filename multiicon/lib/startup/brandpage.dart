import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiicon/startup/hellopageNamsatae.dart';

class BrandPage extends StatefulWidget {
  @override
  _BrandPageState createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HelloPageNamsatae()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/svg/logorabbit.svg",
                height: 150,
                width: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
