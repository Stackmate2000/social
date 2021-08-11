import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/addstorysmallpages/musicName_pages.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    setState(() {
      textController.addListener(() => setState(() {}));
    });
  }

  modalModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.grey[900],
                          child: Icon(
                            Icons.clear,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          style: GoogleFonts.roboto(
                              color: Colors.grey[500],
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                          autofocus: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey[900],
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none)),
                            hintText: "Search music",
                            hintStyle: GoogleFonts.roboto(
                                color: Colors.grey[500],
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.black,
                          border:
                              Border.all(width: 2.0, color: Colors.grey[900])),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Saved",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Text(
                              "Music",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0),
                            ),
                          ),
                          Divider(
                            thickness: 0.5,
                            indent: 10.0,
                            color: Colors.grey[900],
                            height: 30.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Container(child: MusicNamePages()),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          icon: Icon(
            CupertinoIcons.music_note_2,
            color: Colors.white,
          ),
          onPressed: () {
            modalModalBottomSheet(context);
          }),
    );
  }
}
