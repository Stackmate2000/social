import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReelComment extends StatefulWidget {
  @override
  _ReelCommentState createState() => _ReelCommentState();
}

class _ReelCommentState extends State<ReelComment> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.chevron_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Comments",
          style: GoogleFonts.roboto(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: IconButton(
                            icon: Icon(CupertinoIcons.camera),
                            onPressed: () {}),
                      ),
                      Container(
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
                            suffixIcon: textController.text.isEmpty
                                ? Container(
                                    width: 0,
                                  )
                                : TextButton(
                                    onPressed: () => textController.text,
                                    child: Text(
                                      "Post",
                                      style: GoogleFonts.roboto(
                                        fontSize: 15,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(21.0),
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey[400],
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(21.0),
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey[400],
                              ),
                            ),
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
    );
  }
}
