import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/addstorysmallpages/tagpeople_storypage.dart';

class TagPeopleStory extends StatefulWidget {
  @override
  _TagPeopleStoryState createState() => _TagPeopleStoryState();
}

class _TagPeopleStoryState extends State<TagPeopleStory> {
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
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 20.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Tag people in your story",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    indent: 10.0,
                    color: Colors.grey[900],
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 00.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          controller: textController,
                          autofocus: false,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[900],
                            hintText: "",
                            hintStyle: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: textController.text.isEmpty
                                ? Container(
                                    width: 0,
                                  )
                                : IconButton(
                                    icon: Icon(
                                      Icons.clear,
                                      color: Colors.grey[400],
                                    ),
                                    onPressed: () => textController.clear(),
                                  ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: TagPeopleStoryPages(),
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
            CupertinoIcons.at,
            color: Colors.white,
          ),
          onPressed: () {
            modalModalBottomSheet(context);
          }),
    );
  }
}
