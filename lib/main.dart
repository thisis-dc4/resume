import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.mograTextTheme().copyWith(
          bodyText1: GoogleFonts.farsan().copyWith(
            fontSize: 20,
            letterSpacing: 1.5,
          ),
        ),
        colorScheme: const ColorScheme.dark(),
        canvasColor: const Color(0xFF121212),
      ),
      home: HomePage(),
    );
  }
}
