import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowingStoryViewedOne extends StatefulWidget {
  @override
  _FollowingStoryViewedOneState createState() =>
      _FollowingStoryViewedOneState();
}

class _FollowingStoryViewedOneState extends State<FollowingStoryViewedOne> {
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
                                color: Color(0xffEA0025),
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
                            "Hide Story",
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
                            "Share this to your story",
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
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                color: Color(0xffADB3BF)),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Color(0xffFFFFFF),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage("assets/work.jpg"),
                          fit: BoxFit.cover),
                      color: Color(0xffADB3BF),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Roger ignis",
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Color(0xff000000).withOpacity(0.9),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  "3min ago",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Color(0xff000000).withOpacity(0.5),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
