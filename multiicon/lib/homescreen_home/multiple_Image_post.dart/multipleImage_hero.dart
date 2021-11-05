import 'package:flutter/material.dart';

class MultipleImageHero extends StatefulWidget {
  @override
  _MultipleImageHeroState createState() => _MultipleImageHeroState();
}

class _MultipleImageHeroState extends State<MultipleImageHero> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          MultipleImageOne(),
          MultipleImageTwo(),
          MultipleImageThree()
        ],
      ),
    );
  }
}

class MultipleImageOne extends StatefulWidget {
  @override
  _MultipleImageOneState createState() => _MultipleImageOneState();
}

class _MultipleImageOneState extends State<MultipleImageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff000000)),
      child: Stack(
        children: [
          Hero(
            tag: 'multipleImageOne',
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff000000),
                image: DecorationImage(
                  image: AssetImage("assets/splash.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MultipleImageTwo extends StatefulWidget {
  @override
  _MultipleImageTwoState createState() => _MultipleImageTwoState();
}

class _MultipleImageTwoState extends State<MultipleImageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff000000)),
      child: Stack(
        children: [
          Hero(
            tag: 'multipleImageTwo',
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff000000),
                image: DecorationImage(
                  image: AssetImage("assets/girl.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MultipleImageThree extends StatefulWidget {
  @override
  _MultipleImageThreeState createState() => _MultipleImageThreeState();
}

class _MultipleImageThreeState extends State<MultipleImageThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff000000)),
      child: Stack(
        children: [
          Hero(
            tag: 'multipleImageThree',
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff000000),
                image: DecorationImage(
                  image: AssetImage("assets/work.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
