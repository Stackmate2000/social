import 'package:flutter/material.dart';

class LikedActivityAvatar extends StatefulWidget {
  @override
  _LikedActivityAvatarState createState() => _LikedActivityAvatarState();
}

class _LikedActivityAvatarState extends State<LikedActivityAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              gradient: LinearGradient(
                  colors: [Colors.redAccent, Colors.purple],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 55,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Color(0xffFFFFFF),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage("assets/girl.jpg"),
                          fit: BoxFit.cover),
                      color: Color(0xffADB3BF),
                    ),
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
