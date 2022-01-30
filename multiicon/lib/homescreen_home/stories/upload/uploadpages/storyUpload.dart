import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class StoryUpload extends StatefulWidget {
  const StoryUpload({Key key}) : super(key: key);

  @override
  _StoryUploadState createState() => _StoryUploadState();
}

class _StoryUploadState extends State<StoryUpload> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 15.0,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            color: Color(0xffFFFFFF).withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.clear,
                            color: Color(0XFFffffff),
                          ),
                        ),
                      ),
                      Text(
                        "Next",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff3190FF),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
