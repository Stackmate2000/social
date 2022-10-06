import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_userprofile/help_and_support/waveSlider.dart';

class WavePainter extends CustomPainter {
  final double sliderPosition;
  final double dragPercentage;

  final double animationProgress;

  final SliderState sliderState;

  final Color color;
  double _previousSliderPosition = 0;

  final Paint fillPainter;
  final Paint wavePainter;

  WavePainter({
    @required this.sliderPosition,
    @required this.dragPercentage,
    @required this.color,
    @required this.animationProgress,
    @required this.sliderState,
  })  : fillPainter = Paint()
          ..color = color
          ..style = PaintingStyle.fill,
        wavePainter = Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.5;

  @override
  void paint(Canvas canvas, Size size) {
    _paintAnchours(canvas, size);
    // _paintWaveLine(canvas, size);

    // _paintSlidingWave(canvas, size);
    print('state $sliderState');
    switch (sliderState) {
      case (SliderState.starting):
        _paintStartupWave(canvas, size);
        break;
      case (SliderState.resting):
        _paintRestingWave(canvas, size);
        break;
      case (SliderState.sliding):
        _paintSlidingWave(canvas, size);
        break;
      case (SliderState.stopping):
        _paintStoppingWave(canvas, size);
        break;

      default:
        _paintRestingWave(canvas, size);
        break;
    }
    // _paintLine(canvas, size);
    // _paintBlock(canvas, size);
  }

  _paintStartupWave(Canvas canvas, Size size) {
    WaveCurveDefinations line = _calculateWaveLineDefinations(size);

    double waveHeight = lerpDouble(size.height, line.controlHeight,
        Curves.elasticOut.transform(animationProgress));
    line.controlHeight = waveHeight;

    _paintWaveLine(canvas, size, line);
  }

  _paintRestingWave(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, wavePainter);
  }

  _paintSlidingWave(Canvas canvas, Size size) {
    WaveCurveDefinations curveDefinations = _calculateWaveLineDefinations(size);
    _paintWaveLine(canvas, size, curveDefinations);
  }

  _paintStoppingWave(Canvas canvas, Size size) {
    WaveCurveDefinations line = _calculateWaveLineDefinations(size);

    double waveHeight = lerpDouble(line.controlHeight, size.height,
        Curves.elasticOut.transform(animationProgress));
    line.controlHeight = waveHeight;

    _paintWaveLine(canvas, size, line);
  }

  _paintAnchours(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0.0, size.height), 5.0, fillPainter);
    canvas.drawCircle(Offset(size.width, size.height), 5.0, fillPainter);
  }

  WaveCurveDefinations _calculateWaveLineDefinations(Size size) {
    double minWaveHeight = size.height * 0.2;
    double maxWaveHeight = size.height * 0.8;

    double controlHeight =
        (size.height - minWaveHeight) - (maxWaveHeight * dragPercentage);

    double bendWidth = 20 + 20 * dragPercentage;
    double bezierWidth = 20 + 20 * dragPercentage;

    double centerPoint = sliderPosition;
    centerPoint = (centerPoint > size.width) ? size.width : centerPoint;

    double startOfBend = sliderPosition - bendWidth / 2;
    double startOfBezier = startOfBend - bezierWidth;
    double endOfBend = sliderPosition + bendWidth / 2;
    double endOfBezier = endOfBend + bezierWidth;

    startOfBend = (startOfBend <= 0.0) ? 0.0 : startOfBend;
    startOfBezier = (startOfBezier <= 0.0) ? 0.0 : startOfBezier;
    endOfBend = (endOfBend >= size.width) ? size.width : endOfBend;
    endOfBezier = (endOfBezier > size.width) ? size.width : endOfBezier;

    double leftControlPoint1 = startOfBend;
    double leftControlPoint2 = startOfBend;
    double rightControlPoint1 = endOfBend;
    double rightControlPoint2 = endOfBend;

    double bendability = 25.0;
    double maxSlideDifference = 30.0;

    double slideDiffernce = (sliderPosition - _previousSliderPosition).abs();
    // if (slideDiffernce > maxSlideDifference) {
    //  slideDiffernce = maxSlideDifference;
    // }

    slideDiffernce = (slideDiffernce > maxSlideDifference)
        ? maxSlideDifference
        : slideDiffernce;

    bool moveLeft = sliderPosition < _previousSliderPosition;

    double bend =
        lerpDouble(0.0, bendability, slideDiffernce / maxSlideDifference);

    bend = moveLeft ? -bend : bend;

    // if (moveLeft) {
    //  leftControlPoint1 = leftControlPoint1 - bend;
    //  leftControlPoint2 = leftControlPoint2 + bend;
    // rightControlPoint1 = rightControlPoint1 + bend;
    // rightControlPoint2 = rightControlPoint2 - bend;
    // centerPoint = centerPoint + bend;
    // } else {
    //  leftControlPoint1 = leftControlPoint1 + bend;
    //  leftControlPoint2 = leftControlPoint2 - bend;
    // rightControlPoint1 = rightControlPoint1 - bend;
    // rightControlPoint2 = rightControlPoint2 + bend;
    //centerPoint = centerPoint - bend;
    // }

    leftControlPoint1 = leftControlPoint1 + bend;
    leftControlPoint2 = leftControlPoint2 - bend;
    rightControlPoint1 = rightControlPoint1 - bend;
    rightControlPoint2 = rightControlPoint2 + bend;
    centerPoint = centerPoint - bend;

    WaveCurveDefinations waveCurve = WaveCurveDefinations(
        centerPoint: centerPoint,
        controlHeight: controlHeight,
        startOfBezier: startOfBezier,
        startOfBend: startOfBend,
        endOfBezier: endOfBezier,
        endOfBend: endOfBend,
        leftControlPoint1: leftControlPoint1,
        leftControlPoint2: leftControlPoint2,
        rightControlPoint1: rightControlPoint1,
        rightControlPoint2: rightControlPoint2);
    return waveCurve;
  }

  _paintWaveLine(Canvas canvas, Size size, WaveCurveDefinations waveCurve) {
    // WaveCurveDefinations waveCurve = _calculateWaveLineDefinations(size);

    Path path = Path();
    path.moveTo(0.0, size.height);
    path.lineTo(waveCurve.startOfBezier, size.height);
    path.cubicTo(
        waveCurve.leftControlPoint1,
        size.height,
        waveCurve.leftControlPoint2,
        waveCurve.controlHeight,
        waveCurve.centerPoint,
        waveCurve.controlHeight);
    path.cubicTo(
        waveCurve.rightControlPoint1,
        waveCurve.controlHeight,
        waveCurve.rightControlPoint2,
        size.height,
        waveCurve.endOfBezier,
        size.height);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, wavePainter);
  }

  // ignore: unused_element
  _paintBlock(Canvas canvas, Size size) {
    Rect sliderRect =
        Offset(sliderPosition, size.height - 5.0) & Size(3.0, 10.0);
    canvas.drawRect(sliderRect, fillPainter);
  }

  @override
  bool shouldRepaint(WavePainter oldDelegate) {
    _previousSliderPosition = oldDelegate.sliderPosition;
    return true;
  }
}

class WaveCurveDefinations {
  final double startOfBezier;
  final double startOfBend;
  final double endOfBezier;
  final double endOfBend;
  final double leftControlPoint1;
  final double leftControlPoint2;
  final double rightControlPoint1;
  final double rightControlPoint2;
  double controlHeight;
  final double centerPoint;

  WaveCurveDefinations({
    this.startOfBezier,
    this.startOfBend,
    this.endOfBezier,
    this.endOfBend,
    this.leftControlPoint1,
    this.leftControlPoint2,
    this.rightControlPoint1,
    this.rightControlPoint2,
    this.controlHeight,
    this.centerPoint,
  });
}
