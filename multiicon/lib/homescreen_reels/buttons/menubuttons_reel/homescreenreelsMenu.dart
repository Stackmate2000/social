import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_reels/buttons/menubuttons_reel/modalSheet_menubuttons.dart';

class HomeScreenReelsMenu extends StatefulWidget {
  @override
  _HomeScreenReelsMenuState createState() => _HomeScreenReelsMenuState();
}

class _HomeScreenReelsMenuState extends State<HomeScreenReelsMenu> {
  modalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return buildBlur(
            child: ModalSheetMenuButtons(),
          );
        });
  }

  Widget buildBlur({
    @required Widget child,
    double sigmaX = 4,
    double sigmaY = 4,
  }) =>
      ClipRRect(
        borderRadius: BorderRadius.zero,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: IconButton(
        icon: Icon(
          MdiIcons.dotsHorizontal,
          color: Colors.white,
        ),
        onPressed: () {
          modalBottomSheet(context);
        },
      ),
    );
  }
}
