import 'package:anbar/consts/consts.dart';

Widget hotServices({width, height,  String? img, String? title, onPressed}) {
  return Column(
    children: [
      VxBox(
          child: Image.asset(img!, width: 26,fit: BoxFit.cover,)
      )
          .size(width , height)
          .withRounded(value: 11.0).margin(const EdgeInsets.symmetric(horizontal: 15)).make()
          .onTap(onPressed),
      title!.text.fontFamily(semibold).color(darkFontGrey).size(14).make().pOnly(top: 15),  // Adding a little padding on top
    ],
  );
}