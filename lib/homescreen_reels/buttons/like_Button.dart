import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LikeButton extends StatefulWidget {
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isliked = false;
  int counter = 0;

  _pressed() {
    setState(() {
      isliked = !isliked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: isliked
              ? InkWell(
                  onTap: () {
                    setState(() {
                      _pressed();
                    });

                    setState(() {
                      counter--;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(
                      CupertinoIcons.suit_heart_fill,
                      color: Colors.white,
                    ),
                  ),
                )
              : InkWell(
                  onTap: () {
                    setState(() {
                      _pressed();
                    });

                    setState(() {
                      counter++;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white24,
                    child: Icon(
                      CupertinoIcons.suit_heart,
                      color: Colors.white,
                    ),
                  ),
                ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "$counter",
          style: GoogleFonts.roboto(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
