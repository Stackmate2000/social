import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/postfirst/reacts_captions_pum_postone/homescreenhomeReacts_one.dart';
import 'package:multiicon/homescreen_home/postfirst/reacts_captions_pum_postone/homescreenhome_PCS_one.dart';
import 'package:multiicon/homescreen_home/postfirst/reacts_captions_pum_postone/homescreenhomecaptionpostOne.dart';

class HomeScreenHomePostsFirst extends StatefulWidget {
  @override
  _HomeScreenHomePostsFirstState createState() =>
      _HomeScreenHomePostsFirstState();
}

class _HomeScreenHomePostsFirstState extends State<HomeScreenHomePostsFirst> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: HomeScreenHomePCSOne(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width * 0.89,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                  ),
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      GestureDetector(
                        onDoubleTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.55,
                          width: MediaQuery.of(context).size.width * 0.89,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/people.jpg"),
                                fit: BoxFit.cover),
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onDoubleTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.55,
                          width: MediaQuery.of(context).size.width * 0.89,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/holi.jpg"),
                                fit: BoxFit.cover),
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.89,
                child: HomeScreenHomeReactsOne(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.89,
                color: Colors.white,
                child: HomeScreenHomeCaptionPostOne(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
