import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroPageOne extends StatefulWidget {
  const HeroPageOne({Key key}) : super(key: key);

  @override
  _HeroPageOneState createState() => _HeroPageOneState();
}

class _HeroPageOneState extends State<HeroPageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              image: DecorationImage(
                  image: AssetImage("assets/girl.jpg"), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
