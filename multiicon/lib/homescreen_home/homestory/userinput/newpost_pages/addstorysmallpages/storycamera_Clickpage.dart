import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StoryCameraClickPage extends StatefulWidget {
  @override
  _StoryCameraClickPageState createState() => _StoryCameraClickPageState();
}

class _StoryCameraClickPageState extends State<StoryCameraClickPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                image: DecorationImage(
                    image: AssetImage("assets/holis.jpg"), fit: BoxFit.cover),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: IconButton(
                              icon: Icon(
                                CupertinoIcons.arrow_down_to_line,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          child: IconButton(
                              icon: Icon(
                                CupertinoIcons.textformat_alt,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          child: IconButton(
                              icon: Icon(
                                CupertinoIcons.tag_fill,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          child: IconButton(
                              icon: Icon(
                                CupertinoIcons.at,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          child: IconButton(
                              icon: Icon(
                                CupertinoIcons.map_pin,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          child: IconButton(
                              icon: Icon(
                                CupertinoIcons.wand_stars_inverse,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.black87,
                          child: Icon(
                            Icons.clear,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(
                          MdiIcons.send,
                          color: Colors.blue[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
