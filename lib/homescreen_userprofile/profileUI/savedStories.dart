import 'package:flutter/cupertino.dart';

class SavedStories extends StatefulWidget {
  const SavedStories({Key key}) : super(key: key);

  @override
  _SavedStoriesState createState() => _SavedStoriesState();
}

class _SavedStoriesState extends State<SavedStories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1.0, color: Color(0xff0000000).withOpacity(0.2)),
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              color: Color(0xffFFFFF),
            ),
            child: Icon(
              CupertinoIcons.plus,
              color: Color(0xff000000).withOpacity(0.7),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              //image: DecorationImage(
              //image: AssetImage("assets/work.jpg"),
              //fit: BoxFit.cover),
              color: Color(0xffADB3BF),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              //image: DecorationImage(
              //image: AssetImage("assets/work.jpg"),
              //fit: BoxFit.cover),
              color: Color(0xffADB3BF),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              //image: DecorationImage(
              //image: AssetImage("assets/work.jpg"),
              //fit: BoxFit.cover),
              color: Color(0xffADB3BF),
            ),
          ),
        ],
      ),
    );
  }
}
