import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Rating extends StatefulWidget {
  const Rating({
    Key key,
    this.fromValue = 1,
    this.toValue = 1,
    this.skill,
    this.duration = const Duration(milliseconds: 1500),
  })  : assert(fromValue != null),
        assert(toValue != null),
        assert(fromValue <= toValue),
        assert(duration != null),
        super(key: key);

  final double fromValue, toValue;
  final String skill;
  final Duration duration;

  @override
  State<StatefulWidget> createState() => _RatingState();
}

class _RatingState extends State<Rating> with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  int _number;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _animation =
        Tween<double>(begin: widget.fromValue ?? 2, end: widget.toValue ?? 2)
            .animate(_controller)
              ..addListener(() {
                setState(() {
                  _number = _animation.value.floor();
                });
              });

    _controller.forward();
  }

  @override
  Future<void> dispose() async {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.skill,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Expanded(
            child: StepProgressIndicator(
              totalSteps: 100,
              currentStep: _number,
              size: 15,
              padding: 0,
              selectedColor: Colors.pink,
              unselectedColor: Colors.cyan,
              roundedEdges: const Radius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
