import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:drop_shadow/drop_shadow.dart';

class image extends StatelessWidget {
  const image(this.url,{super.key});
  final String url;
  @override
  Widget build(context) {
    return DropShadow(
              blurRadius: 8,
              opacity: .5,
              offset: const Offset(1, 1),
              spread: 2,
              color: HexColor('#663ef4') ,
              child: Image.network(
                url,
              width: 200,
              ),
            );
  }
}