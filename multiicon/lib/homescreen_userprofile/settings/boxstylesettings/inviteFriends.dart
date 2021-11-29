import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InviteFriends extends StatefulWidget {
  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          gradient: LinearGradient(colors: [
            Color(0xff896ae4),
            Color(0xff937cdc),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          boxShadow: [
            BoxShadow(
                color: Color(0xff000000).withOpacity(0.1),
                blurRadius: 4.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 6.0))
          ],
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 30.0),
                child: Container(
                    child: Icon(
                  MdiIcons.airballoonOutline,
                  color: Color(0xff000000).withOpacity(0.1),
                  size: 40,
                )),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Container(
                  child: Text(
                    "Invite your friendmates and start poking together",
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
