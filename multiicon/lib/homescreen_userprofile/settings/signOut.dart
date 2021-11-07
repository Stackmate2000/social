import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignOut extends StatefulWidget {
  @override
  _SignOutState createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Not now",
                                        style: GoogleFonts.roboto(
                                            color: Color(0xff000000),
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                    ),
                                    Text(
                                      "Remember",
                                      style: GoogleFonts.roboto(
                                          color: Color(0xff3190FF),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    "Remember me",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text(
                                          "Save account details.",
                                          style: GoogleFonts.roboto(
                                              color: Colors.blueGrey,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text(
                                          "we'll remember the account info of "
                                          'moloiraj_baruah '
                                          "so that you won't need to login again.",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey[500],
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        });
  }

  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showModalBottomSheet(context);
      },
      child: TweenAnimationBuilder(
        curve: Curves.bounceOut,
        tween: _scaleTween,
        duration: Duration(milliseconds: 1000),
        builder: (BuildContext context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: child,
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[500].withOpacity(0.2),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 6.0))
            ],
            color: Color(0xff3190FF),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          child: Text(
            "Sign Out",
            style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
