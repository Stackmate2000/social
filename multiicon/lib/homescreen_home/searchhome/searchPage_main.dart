import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPageMain extends StatefulWidget {
  const SearchPageMain({Key key}) : super(key: key);

  @override
  _SearchPageMainState createState() => _SearchPageMainState();
}

class _SearchPageMainState extends State<SearchPageMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff000000)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff896ae4),
                Color(0xff937cdc),
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextField(
                            style: GoogleFonts.roboto(
                                color: Color(0xff000000),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                            autofocus: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(21.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(21.0),
                                ),
                              ),
                              hintText: "",
                              hintStyle: GoogleFonts.montserrat(
                                  color: Color(0xffFFFFFF).withOpacity(0.9),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                              fillColor: Color(0xffFFFFFF).withOpacity(0.2),
                              filled: true,
                              prefixIcon: Icon(
                                CupertinoIcons.search,
                                color: Color(0xffFFFFFF).withOpacity(0.9),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
