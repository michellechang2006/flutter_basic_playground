import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:clone_roll_dice_app/roller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.playfairDisplayTextTheme(),
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                HexColor('#DFCCFB'),
                HexColor('#BEADFA'),
                HexColor('#8465f6')
              ],
            ),
          ),
          child: const Center(child: Roller()),
        ),
      ),
    ),
  );
}
