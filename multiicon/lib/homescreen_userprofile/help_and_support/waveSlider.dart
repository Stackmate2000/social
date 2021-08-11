import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_userprofile/help_and_support/wavePainter.dart';

class WaveSLider extends StatefulWidget {
  final double width;
  final double height;
  final Color color;

  final ValueChanged<double> onChanged;

  WaveSLider(
      {this.width = 350.0,
      this.height = 50.0,
      this.color = Colors.white,
      @required this.onChanged})
      : assert(height >= 50 && height <= 600);

  @override
  _WaveSLiderState createState() => _WaveSLiderState();
}

class _WaveSLiderState extends State<WaveSLider>
    with SingleTickerProviderStateMixin {
  double _dragPosition = 0.0;
  double _dragPercentage = 0.0;

  WaveSliderController _slideController;

  @override
  void initState() {
    _slideController = WaveSliderController(vsync: this)
      ..addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  void _updateDragPosition(Offset val) {
    double newDragPosition = 0.0;

    if (val.dx <= 0) {
      newDragPosition = 0;
    } else if (val.dx >= widget.width) {
      newDragPosition = widget.width;
    } else {
      newDragPosition = val.dx;
    }

    setState(() {
      _dragPosition = newDragPosition;
      _dragPercentage = _dragPosition / widget.width;
    });
  }

  _handleChangedStart(double val) {
    assert(widget.onChanged != null);
    {
      widget.onChanged(val);
    }
  }

  void _onDragUpdate(BuildContext context, DragUpdateDetails update) {
    RenderBox box = context.findRenderObject();
    Offset offset = box.globalToLocal(update.globalPosition);
    _slideController.setStateToSliding();
    _updateDragPosition(offset);
    _handleChangedStart(_dragPercentage);
  }

  void _onDragEnd(BuildContext context, DragEndDetails end) {
    _slideController.setStateToStopping();
    setState(() {});
  }

  void _onDragStart(BuildContext context, DragStartDetails start) {
    RenderBox box = context.findRenderObject();
    Offset offset = box.globalToLocal(start.globalPosition);
    _slideController.setStateToStart();
    _updateDragPosition(offset);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: widget.width,
        height: widget.height,
        child: CustomPaint(
          painter: WavePainter(
              animationProgress: _slideController.progress,
              sliderState: _slideController.state,
              color: widget.color,
              dragPercentage: _dragPercentage,
              sliderPosition: _dragPosition),
        ),
      ),
      onHorizontalDragUpdate: (DragUpdateDetails update) =>
          _onDragUpdate(context, update),
      onHorizontalDragStart: (DragStartDetails start) =>
          _onDragStart(context, start),
      onHorizontalDragEnd: (DragEndDetails end) => _onDragEnd(context, end),
    );
  }
}

class WaveSliderController extends ChangeNotifier {
  final AnimationController controller;
  SliderState _state = SliderState.resting;
  WaveSliderController({@required TickerProvider vsync})
      : controller = AnimationController(vsync: vsync) {
    controller
      ..addListener(_onProgressUpdate)
      ..addStatusListener(_onStatusUpdate);
  }

  double get progress => controller.value;
  SliderState get state => _state;

  void _onProgressUpdate() {
    notifyListeners();
  }

  void _onStatusUpdate(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _onTransitionCompleted();
    }
  }

  void _onTransitionCompleted() {
    if (_state == SliderState.stopping) {
      setStateToResting();
    }
  }

  void _startAnimation() {
    controller.duration = Duration(milliseconds: 500);
    controller.forward(from: 0.0);
    notifyListeners();
  }

  void setStateToResting() {
    _state = SliderState.resting;
  }

  void setStateToStart() {
    _startAnimation();
    _state = SliderState.starting;
  }

  void setStateToSliding() {
    _state = SliderState.sliding;
  }

  void setStateToStopping() {
    _startAnimation();
    _state = SliderState.stopping;
  }
}

enum SliderState { starting, resting, sliding, stopping }
