import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class EditProfileImageSettings extends StatefulWidget {
  @override
  _EditProfileImageSettingsState createState() =>
      _EditProfileImageSettingsState();
}

class _EditProfileImageSettingsState extends State<EditProfileImageSettings> {
  modalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 220.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Add a new profile picture?",
                              style: GoogleFonts.roboto(
                                  color: Colors.blueGrey[900],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 0.5,
                          indent: 30,
                          endIndent: 30,
                          color: Colors.grey[400],
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Delete image",
                              style: GoogleFonts.roboto(
                                  color: Colors.blueGrey[900],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ]),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.roboto(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        modalBottomSheet(context);
      },
      child: TweenAnimationBuilder(
        curve: Curves.bounceOut,
        tween: _scaleTween,
        duration: Duration(milliseconds: 1000),
        builder: (BuildContext context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: child,
          );
        },
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                Colors.indigo[400].withOpacity(0.9),
                Colors.purple[800].withOpacity(0.8)
              ],
            ),
          ),
          child: Icon(
            CupertinoIcons.camera,
            color: Colors.purple[100].withOpacity(0.2),
            size: 60,
          ),
        ),
      ),
    );
  }
}
