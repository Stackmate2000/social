import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/colors/backgroundColor.dart';
import 'package:multiicon/speechDesk/themes/ThemeFour.dart';
import 'package:multiicon/speechDesk/themes/themeOne.dart';
import 'package:multiicon/speechDesk/themes/themeThree.dart';
import 'package:multiicon/speechDesk/themes/themeTwo.dart';

class SelectThemeSpeechDesk extends StatefulWidget {
  @override
  _SelectThemeSpeechDeskState createState() => _SelectThemeSpeechDeskState();
}

class _SelectThemeSpeechDeskState extends State<SelectThemeSpeechDesk> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.pencil,
                color: Colors.white,
              ),
              SizedBox(
                width: 3.0,
              ),
              Text(
                "Compose",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
