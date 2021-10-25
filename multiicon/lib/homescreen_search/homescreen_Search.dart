import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data.dart';

class HomeScreenSearch extends StatefulWidget {
  @override
  _HomeScreenSearchState createState() => _HomeScreenSearchState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRation = cardAspectRatio * 1.2;

class _HomeScreenSearchState extends State<HomeScreenSearch> {
  var CurrentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        CurrentPage = controller.page;
      });
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xffFFFFFF)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff70708B),
              ),
            ),
            Stack(
              children: [
                CardScrollingWidget(CurrentPage),
                Positioned.fill(
                    child: PageView.builder(
                  itemCount: images.length,
                  controller: controller,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardScrollingWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollingWidget(this.currentPage);
  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRation,
      child: LayoutBuilder(
        // ignore: missing_return
        builder: (context, constraints) {
          var width = constraints.maxWidth;
          var height = constraints.maxHeight;

          // ignore: unused_local_variable
          var safeWidth = width - 2 * padding;
          // ignore: unused_local_variable
          var safeHeight = height - 2 * padding;

          var heightOfPrimaryCard = safeHeight;
          var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

          var primaryCatdLeft = safeWidth - widthOfPrimaryCard;
          var horizontalInset = primaryCatdLeft / 2;

          List<Widget> cardList = new List();

          for (var i = 0; i < images.length; i++) {
            var delta = i - currentPage;
            bool isOnRIght = delta > 0;

            var start = padding +
                max(
                    primaryCatdLeft -
                        horizontalInset * -delta * (isOnRIght ? 15 : 1),
                    0.0);

            var cardItem = Positioned.directional(
              top: padding + verticalInset * max(-delta, 0.0),
              bottom: padding + verticalInset * max(-delta, 0.0),
              start: start,
              textDirection: TextDirection.rtl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0,
                    ),
                  ]),
                  child: AspectRatio(
                    aspectRatio: cardAspectRatio,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          images[i],
                          fit: BoxFit.cover,
                        ),
                        //Resume
                      ],
                    ),
                  ),
                ),
              ),
            );
            cardList.add(cardItem);
          }
          return Stack(
            children: cardList,
          );
        },
      ),
    );
  }
}
