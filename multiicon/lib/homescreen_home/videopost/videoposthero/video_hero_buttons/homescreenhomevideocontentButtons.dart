import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreenHomeVideoContentButtons extends StatefulWidget {
  @override
  _HomeScreenHomeVideoContentButtonsState createState() =>
      _HomeScreenHomeVideoContentButtonsState();
}

class _HomeScreenHomeVideoContentButtonsState
    extends State<HomeScreenHomeVideoContentButtons> {
  bool ispaused = false;
  double value = 50;
  bool ismuted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 0),
                reverseDuration: Duration(milliseconds: 0),
                crossFadeState: ismuted
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: Container(
                  child: IconButton(
                      icon: Icon(
                        MdiIcons.volumeHigh,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          ismuted = false;
                        });
                      }),
                ),
                secondChild: Container(
                  child: IconButton(
                      icon: Icon(
                        MdiIcons.volumeOff,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          ismuted = true;
                        });
                      }),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Container(
                  child: AnimatedCrossFade(
                    duration: Duration(milliseconds: 0),
                    reverseDuration: Duration(milliseconds: 0),
                    crossFadeState: ispaused
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    firstChild: Container(
                      child: IconButton(
                          icon: Icon(
                            MdiIcons.play,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              ispaused = false;
                            });
                          }),
                    ),
                    secondChild: Container(
                      child: IconButton(
                          icon: Icon(
                            MdiIcons.pause,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              ispaused = true;
                            });
                          }),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: SliderTheme(
                    data: SliderThemeData(
                        trackHeight: 1,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 7),
                        thumbColor: Colors.cyan,
                        activeTrackColor: Colors.cyan[200],
                        inactiveTrackColor: Colors.white,
                        overlayColor: Colors.transparent,
                        valueIndicatorColor: Colors.cyan),
                    child: Row(
                      children: [
                        Expanded(
                          child: Slider(
                            value: value,
                            min: 0,
                            max: 100,
                            divisions: 100,
                            label: value.round().toString(),
                            onChanged: (value) =>
                                setState(() => this.value = value),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
