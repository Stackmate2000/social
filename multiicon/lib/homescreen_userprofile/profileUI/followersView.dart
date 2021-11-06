import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowersView extends StatefulWidget {
  @override
  _FollowersViewState createState() => _FollowersViewState();
}

class _FollowersViewState extends State<FollowersView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Text(
                            "Photography",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Color(0xff000000).withOpacity(0.7),
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: Text(
                            "Worlds best UI/UX design inspiration.Submit your work.",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Color(0xff000000).withOpacity(0.7),
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Container(
                          child: Text(
                            "interfacely.net/submit",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Color(0xff7070B8),
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Container(
                          child: Text(
                            "Followed by ui.ux.designn.",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Color(0xff000000).withOpacity(0.7),
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
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
