import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadPageOneNav extends StatefulWidget {
  const UploadPageOneNav({Key key}) : super(key: key);

  @override
  _UploadPageOneNavState createState() => _UploadPageOneNavState();
}

class _UploadPageOneNavState extends State<UploadPageOneNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff000000),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Icon(
                            CupertinoIcons.chevron_left,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Gallery",
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Color(0xffFFFFFF).withOpacity(0.9),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Next",
                          style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Color(0xff896ae4).withOpacity(0.9),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
