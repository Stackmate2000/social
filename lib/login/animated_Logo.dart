import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimatedLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 1000),
      tween: Tween<double>(begin: 0, end: 100),
      builder: (BuildContext context, double _val, Widget child) {
        return Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            "assets/svg/logorabbit.svg",
            height: 100,
            width: 100,
          ),
          height: _val,
        );
      },
    );
  }
}
