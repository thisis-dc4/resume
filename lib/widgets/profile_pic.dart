import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePic extends StatelessWidget {
  final String image = 'assets/images/resume.jpeg';
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          image,
          fit: BoxFit.fill,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'DISHANT CHAUDHARY',
                    style: TextStyle(fontSize: 30, color: Colors.deepPurple[100]),
                  ),
                  Text(
                    'Front-End Developer',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.deepPurple[50],
                        ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 2, child: Container()),
            const Text(
              'More',
              style: TextStyle(color: Colors.white54, fontSize: 17),
            ),
            const Icon(
              FontAwesomeIcons.angleDoubleDown,
              color: Colors.white54,
              size: 15,
            ),
          ],
        ),
      ],
    );
  }
}
