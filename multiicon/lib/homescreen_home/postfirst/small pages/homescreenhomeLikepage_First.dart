import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreenHomeLikePageFirst extends StatefulWidget {
  @override
  HomeScreenHomeLikePageFirstState createState() =>
      HomeScreenHomeLikePageFirstState();
}

class HomeScreenHomeLikePageFirstState
    extends State<HomeScreenHomeLikePageFirst> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            height: 60,
            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                      MdiIcons.chevronLeft,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Text(
                  "LikesFirst",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    MdiIcons.heart,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "1 " "likes",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                child: Row(
                              children: [
                                Text(
                                  "1K " "comments",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )),
                            Container(
                                child: Row(
                              children: [
                                Text(
                                  "1 " "shares",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                      Container(
                        child: TweenAnimationBuilder(
                          curve: Curves.easeIn,
                          duration: Duration(milliseconds: 700),
                          tween: Tween<double>(begin: 0, end: 350),
                          builder: (BuildContext context, double _val,
                              Widget child) {
                            return Container(
                              width: _val,
                              height: MediaQuery.of(context).size.height * 0.07,
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  isDense: true,
                                  hintText: "Search",
                                  hintStyle: GoogleFonts.roboto(
                                      color: Colors.grey[600],
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  prefixIcon: Icon(Icons.search),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/holis.jpg"),
                                backgroundColor: Colors.black,
                                radius: 30,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Lokokoholololo name",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "|",
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
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/holi.jpg"),
                                backgroundColor: Colors.black,
                                radius: 30,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Lokokoholo",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "|",
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "follow",
                                  style: GoogleFonts.roboto(
                                      color: Colors.blue,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
