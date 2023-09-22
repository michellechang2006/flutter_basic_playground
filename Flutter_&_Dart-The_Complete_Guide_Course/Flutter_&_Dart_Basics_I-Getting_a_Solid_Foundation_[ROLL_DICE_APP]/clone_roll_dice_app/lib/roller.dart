import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:clone_roll_dice_app/title_text.dart';
import 'package:clone_roll_dice_app/image.dart';
import 'dart:math';


const  imageUrls = [
  'https://i.imgur.com/jHViIu0.png',
  'https://i.imgur.com/ixbLNVA.png',
  'https://i.imgur.com/35cqfxu.png',
  'https://i.imgur.com/KC8lKvH.png',
  'https://i.imgur.com/R65AXMx.png',
  'https://i.imgur.com/0xd3We9.png'
];

var index = Random().nextInt(imageUrls.length);
var imageUrl = imageUrls.elementAt(index);


class Roller extends StatefulWidget {
  const Roller({super.key});
  @override
  State<Roller> createState() => _RollerState();
}



class _RollerState extends State<Roller> {
  void roller() {
    setState(() {
      index = Random().nextInt(imageUrls.length);
      imageUrl = imageUrls.elementAt(index);
      print(index);
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TitleText(),
        const SizedBox(
          height: 5,
        ),
        image(imageUrl),
        const SizedBox(
          height: 1,
        ),
        ElevatedButton(
          onPressed: roller,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) {
                // If the button is pressed, return green, otherwise blue
                if (states.contains(MaterialState.pressed)) {
                  return HexColor("#8465f6");
                }
                return HexColor("#663EF4");
              },
            ),
          ),
          child: const Text(
            'PLAY',
            style: TextStyle(color: Colors.white,
            fontWeight:FontWeight.w700,letterSpacing: 2),
          ),
        ),
      ],
    );
  }
}
