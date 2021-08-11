import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalSearch extends StatefulWidget {
  @override
  _GlobalSearchState createState() => _GlobalSearchState();
}

int toggle = 1;

class _GlobalSearchState extends State<GlobalSearch> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    setState(() {
      textController.addListener(() => setState(() {}));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 15.0, right: 15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: TweenAnimationBuilder(
                                  curve: Curves.easeIn,
                                  duration: Duration(milliseconds: 700),
                                  tween: Tween<double>(begin: 0, end: 250),
                                  builder: (BuildContext context, double _val,
                                      Widget child) {
                                    return Container(
                                      width: _val,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      child: TextField(
                                        controller: textController,
                                        autofocus: true,
                                        textInputAction: TextInputAction.done,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey[200],
                                          hintText: "Search",
                                          hintStyle: GoogleFonts.roboto(
                                            fontSize: 15,
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.w400,
                                          ),
                                          suffixIcon: textController
                                                  .text.isEmpty
                                              ? Container(
                                                  width: 0,
                                                )
                                              : IconButton(
                                                  icon: Icon(
                                                    Icons.clear,
                                                    color: Colors.grey[400],
                                                  ),
                                                  onPressed: () =>
                                                      textController.clear(),
                                                ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              width: 0,
                                              style: BorderStyle.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Cancel",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                        ),
                        Center(
                          child: Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              'Enter the name you are looking for on TrickyBin !',
                              style: GoogleFonts.roboto(
                                  color: Colors.grey[800],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
