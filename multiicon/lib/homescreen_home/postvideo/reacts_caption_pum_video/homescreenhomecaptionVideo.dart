import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreenHomeCaptionVideo extends StatefulWidget {
  @override
  _HomeScreenHomeCaptionVideoState createState() =>
      _HomeScreenHomeCaptionVideoState();
}

class _HomeScreenHomeCaptionVideoState
    extends State<HomeScreenHomeCaptionVideo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Shaki Skai of you,Nature never gor=es out of style,shoes of colorsadskjlllllllllllljhgiguihguigiulllllll llllllfhuajskdg;hfoj;l ebifuhewuoafhoiuegfiyegbiudbkjghnlkfhgooooooooooohjghojkldfhnxgh;lfhgoihorihgz'lhgoirhpfjeogfonwsodfshkgbiuehojrpieujfcnodsgiuh;KDFHuhrogiujdjoihgfohgaodjfj'l.",
          style: GoogleFonts.roboto(
              color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
          textAlign: TextAlign.start,
          maxLines: 6,
        ),
      ),
    );
  }
}
