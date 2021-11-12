import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/colors/backgroundColor.dart';

class HomeScreenUserProfile extends StatefulWidget {
  @override
  _HomeScreenUserProfileState createState() => _HomeScreenUserProfileState();
}

class _HomeScreenUserProfileState extends State<HomeScreenUserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 400,
                      left: 150,
                      child: Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(
                          color: backgroundColor.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 20.0, right: 0.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 60,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(30),
                                                  bottomLeft:
                                                      Radius.circular(30)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey[500]
                                                        .withOpacity(0.7),
                                                    blurRadius: 6.0,
                                                    offset: Offset(0.0, 6.0))
                                              ]),
                                          child: Icon(
                                            Icons.settings,
                                            color: Colors.blueGrey,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
