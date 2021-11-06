import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FirstImageMenuButton extends StatefulWidget {
  @override
  _FirstImageMenuButtonState createState() => _FirstImageMenuButtonState();
}

class _FirstImageMenuButtonState extends State<FirstImageMenuButton> {
  modalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 360.0,
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
                  height: 260,
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
                            "Report",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 0.1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey[300],
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Block this user",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 0.1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey[300],
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Save this post",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 0.1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey[300],
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Add/remove from your lists",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                            color: Colors.black,
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        modalBottomSheet(context);
      },
      child: Container(
        child: Icon(
          MdiIcons.dotsHorizontal,
          color: Color(0xff000000).withOpacity(0.5),
        ),
      ),
    );
  }
}
