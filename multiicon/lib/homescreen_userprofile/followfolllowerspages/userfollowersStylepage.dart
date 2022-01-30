import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserFollowersStylePage extends StatefulWidget {
  @override
  _UserFollowersStylePageState createState() => _UserFollowersStylePageState();
}

class _UserFollowersStylePageState extends State<UserFollowersStylePage> {
  bool isfollowing = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/holis.jpg"),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Alexander Gramam",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "|",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "following",
                          style: GoogleFonts.roboto(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Remove",
                      style: GoogleFonts.roboto(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/holi.jpg"),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "_yoloman @6",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "|",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        child: AnimatedCrossFade(
                          duration: Duration(milliseconds: 0),
                          reverseDuration: Duration(milliseconds: 0),
                          crossFadeState: isfollowing
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst,
                          firstChild: TextButton(
                              onPressed: () {
                                setState(() {
                                  isfollowing = true;
                                });
                              },
                              child: Text(
                                "follow",
                                style: GoogleFonts.roboto(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )),
                          secondChild: TextButton(
                              onPressed: () {
                                setState(() {
                                  isfollowing = false;
                                });
                              },
                              child: Text(
                                "following",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Remove",
                      style: GoogleFonts.roboto(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
