import 'package:anbar/consts/colors.dart';
import 'package:anbar/consts/styles.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget homeProducts({double? width, height,  String? img, String? title, onPressed, String? color}) {
  return Column(
    
    children: [
      VxBox(
          child: Image.asset(img!, width: width, height: height)
      )
          .size(139 , 154)
          .withRounded(value: 14.0).color(lightGreenColor).margin(EdgeInsets.symmetric(horizontal: 16.0)).make()
          .onTap(onPressed),
      title!.text.fontFamily(medium).color(darkFontGrey).size(13).make().pOnly(top: 15),
    ],
  );
}
void handlePress0() {
  print('Thermostat pressed');
  // Additional code for thermostat
}

void handlePress1() {
  print('AC Kit pressed');
  // Additional code for AC Kit
}

void handlePress2() {
  print('Thermistor pressed');
  // Additional code for Thermistor
}

