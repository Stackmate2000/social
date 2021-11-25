import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadTextTwo extends StatefulWidget {
  const UploadTextTwo({Key key}) : super(key: key);

  @override
  _UploadTextTwoState createState() => _UploadTextTwoState();
}

class _UploadTextTwoState extends State<UploadTextTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Happy Birthday",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF).withOpacity(0.2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Text("@",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
