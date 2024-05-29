import 'package:anbar/consts/colors.dart';
import 'package:anbar/consts/styles.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget homeButtons({width, height,  String? icon, String? title, onPressed}) {
  return Column(
    children: [
      VxBox(
          child: Image.asset(icon!, width: 26)
      )
          .size(width , height)
          .withRounded(value: 9.0).color(primaryColor).make()
          .onTap(onPressed),
        title!.text.fontFamily(medium).color(darkFontGrey).size(13).make().pOnly(top: 15),
    ],
  );
}
