import 'package:anbar/consts/consts.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(background),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}