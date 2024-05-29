import 'package:anbar/consts/consts.dart';

Widget hvacServiceCard() {
  return Card(
    margin: const EdgeInsets.all(7),
    elevation: 5,
    color: whiteColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      width: 345,
      height: 142,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: <Widget>[

          // Text and button section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: '$havac ',
                          style:
                          TextStyle(fontFamily: semibold,fontSize: 16.0, color: primaryColor)),
                      TextSpan(
                          text: service,
                          style:
                          TextStyle(fontFamily: semibold,fontSize: 16.0, color: blackColor)),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  detail,
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: light,
                    color: blackColor,
                  ),
                ),
                10.heightBox,
                SizedBox(
                  height: 18,
                  width: 83,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.zero,// Background color of button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(sOrderNow,style: TextStyle(fontSize: 10,color: whiteColor),),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          // Image section
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(detailCardAc), // Add your air conditioner image path here
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    ),
  ).onTap(() {});
}

// Widget hvacServiceCard() {
//   return  Row(
//     children: [
//       Expanded(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             RichText(
//               text: const TextSpan(
//                 children: [
//                   TextSpan(
//                       text: '$havac ',
//                       style:
//                       TextStyle(fontFamily: semibold,fontSize: 16.0, color: primaryColor)),
//                   TextSpan(
//                       text: service,
//                       style:
//                       TextStyle(fontFamily: semibold,fontSize: 16.0, color: blackColor)),
//                 ],
//               ),
//             ),
//             6.heightBox,
//             detail.text.size(10).make(),
//           ],
//         ),
//       ),
//       Image.asset(logo, width: 100, fit: BoxFit.cover).box.roundedFull.make(),
//     ],
//   ).box.rounded.color(Colors.white).height(131).width(345).shadowSm.padding(const EdgeInsets.all(50)).make();
// }