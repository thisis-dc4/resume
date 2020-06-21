import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  'DISHANT CHAUDHARY',
                  style: GoogleFonts.mogra(fontSize: 30),
                ),
                Text(
                  'Front-End Developer',
                  style: GoogleFonts.mogra(fontSize: 22),
                ),
              ],
            ),
          ),
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 1,
            child: const Text('More'),
          )
        ],
      ),
    );
  }
}
