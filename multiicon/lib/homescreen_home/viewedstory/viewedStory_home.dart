import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ViewedStoryHome extends StatefulWidget {
  @override
  _ViewedStoryHomeState createState() => _ViewedStoryHomeState();
}

class _ViewedStoryHomeState extends State<ViewedStoryHome> {
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
                              "Report",
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
                              "Block this user for me",
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onLongPress: () {
            modalBottomSheet(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[500],
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 38,
              backgroundColor: Colors.transparent,
              child: CircleAvatar(
                radius: 36,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 32,
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
