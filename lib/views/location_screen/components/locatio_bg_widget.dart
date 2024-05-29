import 'package:anbar/consts/images.dart';
import 'package:flutter/cupertino.dart';

Widget locationBgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(locationBg),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}