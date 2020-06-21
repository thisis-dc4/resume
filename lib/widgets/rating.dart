import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Rating extends StatelessWidget {
  final int step;
  final String skill;

  const Rating({Key key, this.step, this.skill}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Row(
        children: [
          Expanded(child: Text(skill)),
          Expanded(
            child: StepProgressIndicator(
              totalSteps: 5,
              currentStep: step,
              size: 15,
              padding: 0,
              selectedColor: Colors.yellow,
              unselectedColor: Colors.cyan,
              roundedEdges: const Radius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
