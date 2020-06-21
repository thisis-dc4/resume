import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Expanded(
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
          const Text('More'),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
