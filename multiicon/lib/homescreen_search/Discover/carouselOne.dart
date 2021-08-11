import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CarouselOne extends StatefulWidget {
  @override
  _CarouselOneState createState() => _CarouselOneState();
}

class _CarouselOneState extends State<CarouselOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, bottom: 20.0, right: 15.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nickname christin",
                              style: GoogleFonts.roboto(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Christina",
                              style: GoogleFonts.roboto(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Text(
                                "36 followers "
                                "along with "
                                "hello world"
                                " hello world...",
                                style: GoogleFonts.roboto(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Text(
                            "Follow",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.clear,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
