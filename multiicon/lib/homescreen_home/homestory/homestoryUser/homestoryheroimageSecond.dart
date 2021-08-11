import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_home/homestory/homestoryUser/homestoryAddtostory.dart';

class HomeStoryHeroImageSecond extends StatefulWidget {
  @override
  _HomeStoryHeroImageSecondState createState() =>
      _HomeStoryHeroImageSecondState();
}

class _HomeStoryHeroImageSecondState extends State<HomeStoryHeroImageSecond> {
  final textController = TextEditingController();

  void initState() {
    super.initState();
    setState(() {
      textController.addListener(() => setState(() {}));
    });
  }

  modalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 220.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Report this story",
                            style: GoogleFonts.roboto(
                                color: Colors.grey[900],
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Colors.grey[600],
                          indent: 16,
                          endIndent: 16,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Mute",
                            style: GoogleFonts.roboto(
                                color: Colors.grey[900],
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.roboto(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Image(
              image: AssetImage("assets/holi.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 10.0, bottom: 10.0, left: 10.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Container(child: HomeStoryAddtoStory()),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60.0,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: textController,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "Send message",
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          suffixIcon: textController.text.isEmpty
                              ? Container(
                                  width: 0,
                                )
                              : TextButton(
                                  onPressed: () => textController.text,
                                  child: Text(
                                    "Send",
                                    style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            borderSide: BorderSide(
                              width: 0.5,
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            borderSide: BorderSide(
                              width: 0.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: IconButton(
                              icon: Icon(
                                CupertinoIcons.clear,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                        Container(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("assets/people.jpg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "_People_339",
                                style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: IconButton(
                          icon: Icon(MdiIcons.dotsHorizontal,
                              color: Colors.white),
                          onPressed: () {
                            modalBottomSheet(context);
                          }),
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
