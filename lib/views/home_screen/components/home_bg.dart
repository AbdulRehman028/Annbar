import 'package:anbar/consts/consts.dart';


Widget homeBgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(homeBg),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}