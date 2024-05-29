import 'package:anbar/consts/consts.dart';

class HeadingSeeAll extends StatelessWidget {
  final String text;
  const HeadingSeeAll({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          text.text
              .size(18)
              .color(blackColor)
              .fontFamily(semibold)
              .make(),
          const Spacer(),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: greyColor,
              textStyle: const TextStyle(
                  fontSize: 12, fontFamily: semibold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100), // Rounded corners, adjust radius as needed
                side: const BorderSide(color: lightGreyColor), // Light grey outline
              ),
            ),
            child:  Row(
              mainAxisSize: MainAxisSize.min,  // Ensures the Row takes only as much space as needed
              children: [
                seeAll.text.size(12).color(slateGreyColor).fontFamily(semibold).make(),
                const Icon(Icons.arrow_forward_ios, size: 12, color: greyColor), // Small forward arrow icon
              ],
            ),
          )
        ],
      ),
    );
  }
}
