import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SearchPageMain extends StatefulWidget {
  const SearchPageMain({Key key}) : super(key: key);

  @override
  _SearchPageMainState createState() => _SearchPageMainState();
}

class _SearchPageMainState extends State<SearchPageMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffFFFFFF)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF4F6F6),
            ),
          ),
        ],
      ),
    );
  }
}
