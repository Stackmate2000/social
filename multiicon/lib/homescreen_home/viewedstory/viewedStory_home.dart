import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ViewedStoryHome extends StatefulWidget {
  @override
  _ViewedStoryHomeState createState() => _ViewedStoryHomeState();
}

class _ViewedStoryHomeState extends State<ViewedStoryHome> {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.indigo[400],
                    Colors.purple[800],
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.indigo[200],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 50.0, left: 20.0, right: 20.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              child: Text("Christina",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                  "Its "
                                  "Christina "
                                  "The user you followed on TrickyBin",
                                  style: GoogleFonts.roboto(
                                      color:
                                          Colors.purple[100].withOpacity(0.6),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.start),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 20.0, right: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Mute, Christina from story?",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "View Christina profile.",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple[900].withOpacity(0.7),
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                                offset: Offset(0.0, 6.0))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Text(
                          "Cancel",
                          style: GoogleFonts.roboto(
                              color: Colors.purple[800],
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onLongPress: () {
            _showModalBottomSheet(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[500],
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 42,
              backgroundColor: Colors.transparent,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage("assets/holi.jpg"),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          "Zuckerberg",
          style: GoogleFonts.roboto(
              color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
