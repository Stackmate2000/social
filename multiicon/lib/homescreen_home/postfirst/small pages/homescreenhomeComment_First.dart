import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenHomeCommentFirst extends StatefulWidget {
  @override
  _HomeScreenHomeCommentFirstState createState() =>
      _HomeScreenHomeCommentFirstState();
}

class _HomeScreenHomeCommentFirstState
    extends State<HomeScreenHomeCommentFirst> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            child: IconButton(
                              icon: Icon(
                                CupertinoIcons.chevron_back,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            child: Text(
                              "CommentsOne",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: IconButton(
                              icon: Icon(
                                CupertinoIcons.camera,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: TextField(
                              controller: textController,
                              autofocus: true,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                labelText: "Add a comment..",
                                labelStyle: GoogleFonts.roboto(
                                  fontSize: 15,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w400,
                                ),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    textController.text.isEmpty
                                        ? Container(
                                            width: 0,
                                          )
                                        : TextButton(
                                            onPressed: () =>
                                                textController.text,
                                            child: Text(
                                              "Post",
                                              style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: SvgPicture.asset(
                                                "assets/svg/sticker.svg",
                                                color: Colors.grey[600],
                                              )),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(21.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey[400],
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(21.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
