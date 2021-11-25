import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadTextFour extends StatefulWidget {
  const UploadTextFour({Key key}) : super(key: key);

  @override
  _UploadTextFourState createState() => _UploadTextFourState();
}

class _UploadTextFourState extends State<UploadTextFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.7,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
