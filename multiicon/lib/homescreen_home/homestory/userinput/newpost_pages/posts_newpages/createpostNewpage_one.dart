import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreatePostNewPageOne extends StatefulWidget {
  @override
  _CreatePostNewPageOneState createState() => _CreatePostNewPageOneState();
}

class _CreatePostNewPageOneState extends State<CreatePostNewPageOne> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(
                                CupertinoIcons.chevron_left,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              "Create Post",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "Share",
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: Colors.blue[600],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              height: 120.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.0),
                                ),
                                color: Colors.grey[400],
                                image: DecorationImage(
                                    image: AssetImage("assets/people.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 30.0, right: 10.0),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Tag people",
                                  style: GoogleFonts.roboto(
                                    fontSize: 15,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                IconButton(
                                    icon: Icon(MdiIcons.chevronRight,
                                        color: Colors.grey[700]),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                          Divider(
                              thickness: 0.5,
                              indent: 10.0,
                              endIndent: 10.0,
                              color: Colors.grey[300]),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Location",
                                  style: GoogleFonts.roboto(
                                    fontSize: 15,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                IconButton(
                                    icon: Icon(MdiIcons.chevronRight,
                                        color: Colors.grey[700]),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
