import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MusicButton extends StatefulWidget {
  @override
  _MusicButtonState createState() => _MusicButtonState();
}

class _MusicButtonState extends State<MusicButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: SvgPicture.asset(
        "assets/svg/headphones.svg",
        color: Colors.white,
      ),
    );
  }
}
