import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexOne extends StatefulWidget {
  @override
  _IndexOneState createState() => _IndexOneState();
}

class _IndexOneState extends State<IndexOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.36,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          image: AssetImage("assets/splash.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.grey[600],
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 15.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "31",
                                  style: GoogleFonts.karla(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "JAN",
                                  style: GoogleFonts.karla(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                Text(
                                  "2021",
                                  style: GoogleFonts.karla(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF).withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                            image: AssetImage("assets/girl.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.grey[600],
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15.0, top: 15.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                CupertinoIcons.heart,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "3",
                                    style: GoogleFonts.karla(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "FEB",
                                    style: GoogleFonts.karla(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  Text(
                                    "2021",
                                    style: GoogleFonts.karla(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffFFFFFF).withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                            image: AssetImage("assets/work.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.grey[600],
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15.0, top: 15.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                CupertinoIcons.heart,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "31",
                                    style: GoogleFonts.karla(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "JAN",
                                    style: GoogleFonts.karla(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  Text(
                                    "2021",
                                    style: GoogleFonts.karla(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffFFFFFF).withOpacity(0.5),
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
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                      image: AssetImage("assets/work.jpg"), fit: BoxFit.cover),
                  color: Colors.grey[600],
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15.0, top: 15.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          CupertinoIcons.heart,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "31",
                              style: GoogleFonts.karla(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "JAN",
                              style: GoogleFonts.karla(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Text(
                              "2021",
                              style: GoogleFonts.karla(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF).withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                      image: AssetImage("assets/girl.jpg"), fit: BoxFit.cover),
                  color: Colors.grey[600],
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15.0, top: 15.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          CupertinoIcons.heart,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "31",
                              style: GoogleFonts.karla(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "JAN",
                              style: GoogleFonts.karla(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Text(
                              "2021",
                              style: GoogleFonts.karla(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF).withOpacity(0.5),
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
        )
      ],
    );
  }
}
