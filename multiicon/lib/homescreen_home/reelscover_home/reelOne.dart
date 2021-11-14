import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReelOne extends StatefulWidget {
  @override
  _ReelOneState createState() => _ReelOneState();
}

class _ReelOneState extends State<ReelOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.37,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.transparent),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Suggested Reels for you",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Color(0xff000000).withOpacity(0.7),
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Watch",
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              letterSpacing: 0.2,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Color(0xffADB3BF),
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Color(0xffADB3BF),
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Color(0xffADB3BF),
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Color(0xffADB3BF),
                                borderRadius: BorderRadius.circular(8.0)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
