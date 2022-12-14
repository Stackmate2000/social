import 'package:flutter/material.dart';

class IconButtonActionReelsButton extends StatefulWidget {
  const IconButtonActionReelsButton({Key key, this.duration, this.color})
      : super(key: key);

  final int duration;

  final Color color;

  @override
  _IconButtonActionReelsButtonState createState() =>
      _IconButtonActionReelsButtonState();
}

class _IconButtonActionReelsButtonState
    extends State<IconButtonActionReelsButton>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: widget.duration), vsync: this);
    final curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    animation = Tween<double>(begin: 0, end: 15).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        color: widget.color,
      ),
      height: animation.value,
    );
  }
}

// ignore: must_be_immutable
class Musicvisitualizer extends StatefulWidget {
  @override
  State<Musicvisitualizer> createState() => _MusicvisitualizerState();
}

class _MusicvisitualizerState extends State<Musicvisitualizer> {
  List<int> duartion = [900, 700, 600, 800, 500];

  List<Color> colors = [
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.yellowAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: new List<Widget>.generate(
          5,
          (index) => IconButtonActionReelsButton(
              duration: duartion[index % 5], color: Colors.white),
        ),
      ),
    );
  }
}
