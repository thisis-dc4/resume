import 'package:flutter/material.dart';
import 'package:resume/widgets/more_info.dart';
import 'package:resume/widgets/profile_pic.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            ProfilePic(),
            MoreInfo(),
          ],
        ),
      ),
    );
  }
}
