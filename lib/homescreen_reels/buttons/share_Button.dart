import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_reels/small_pages/homescreenreelssocialShare.dart';

class ShareButton extends StatefulWidget {
  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  bool isshared = false;
  modalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      color: Colors.white,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.transparent,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Share to",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 100,
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Cancel",
                                    style: GoogleFonts.roboto(
                                        color: Colors.red,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: HomescreenReelsSocialShare(),
                  ),
                  Divider(
                    thickness: 0.5,
                    indent: 30.0,
                    endIndent: 30.0,
                  ),
                  Container(
                    height: 140,
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: CircleAvatar(),
                            ),
                            Container(
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Any comment about this ?",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      Navigator.of(context).pop();
                                    });
                                    setState(() {
                                      setState(() {
                                        counter++;
                                        {
                                          print(
                                            "counter++",
                                          );
                                        }
                                      });
                                      setState(() {
                                        isshared = true;
                                      });
                                    });
                                  },
                                  child: Text(
                                    "Share Now",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

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
                    backgroundColor: Colors.white24,
                    child: Icon(
                      MdiIcons.checkAll,
                      color: Colors.cyan,
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
                      CupertinoIcons.arrowshape_turn_up_right_fill,
                      size: 25,
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
