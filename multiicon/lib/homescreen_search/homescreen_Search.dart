import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/colors/backgroundColor.dart';
import 'package:multiicon/homescreen_search/Discover/carouselOne.dart';
import 'package:multiicon/homescreen_search/Discover/carouselThree.dart';
import 'package:multiicon/homescreen_search/Discover/carouselTwo.dart';
import 'package:multiicon/homescreen_search/SidePages/globalSearch.dart';

class HomeScreenSearch extends StatefulWidget {
  @override
  _HomeScreenSearchState createState() => _HomeScreenSearchState();
}

class _HomeScreenSearchState extends State<HomeScreenSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(color: Colors.white),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.65,
                    decoration: BoxDecoration(
                      color: backgroundColor.withOpacity(0.4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, left: 20.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Hello there,",
                                        style: GoogleFonts.roboto(
                                            color: Colors.blueGrey[500],
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.0,
                                    ),
                                    Text(
                                      "Christina",
                                      style: GoogleFonts.roboto(
                                          color: Colors.blueGrey[800],
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GlobalSearch()));
                                  },
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: Text(
                                "Here's some suggestions of peoples that you might know or you wanna follow them",
                                style: GoogleFonts.roboto(
                                    color: Colors.blueGrey[300],
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: CarouselSlider(
                          options: CarouselOptions(
                              height: MediaQuery.of(context).size.height * 0.65,
                              initialPage: 0,
                              enableInfiniteScroll: false,
                              enlargeCenterPage: true,
                              scrollDirection: Axis.horizontal,
                              scrollPhysics: BouncingScrollPhysics()),
                          items: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage("assets/image.jpg"),
                                      fit: BoxFit.cover),
                                ),
                                child: CarouselOne(),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    image: DecorationImage(
                                        image: AssetImage("assets/image.jpg"),
                                        fit: BoxFit.cover)),
                                child: CarouselTwo(),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.blue[800], Colors.cyan]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                ),
                                child: CarouselThree(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
