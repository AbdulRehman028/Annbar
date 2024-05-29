import 'package:flutter/material.dart';

Widget ourButton({Function()? onPress, Color? color, Color? textColor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    onPressed: onPress, // Correct way to assign the function
    child: Text(
      title ?? '', // Safeguard for null title
      style: TextStyle(color: textColor, fontFamily: "inter_bold", fontSize: 16),
    ),
  );
}