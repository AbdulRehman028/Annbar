import 'package:anbar/consts/consts.dart';
import 'package:anbar/views/home_screen/home.dart';
import 'package:anbar/views/home_screen/home_screen.dart';
import 'package:anbar/views/location_screen/components/locatio_bg_widget.dart';
import 'package:get/get.dart';
import '../../common_widgets/our_button.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return locationBgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8),
            child:  Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back, color: Color(0xff1E9B93),),),
                const SizedBox(height: 12),
                const Text(
                  yourLocation,
                  style: TextStyle(
                      color: Color(0xff1E9B93),
                      fontSize: 35,
                      fontFamily: bold)
                ),
                const SizedBox(height: 12),
                const Text(
                  byAllowingLocationDetails,
                  style: TextStyle(
                      color: Color(0xff1E9B93),
                      fontSize: 15,
                      fontFamily: regular),
                ),
                const Spacer(),
                SizedBox(
                  height: 62,
                  width: double.infinity,
                    child: ourButton(onPress: () {
                      Get.to(() => const Home());

                    }, color: const Color(0xff1E9B93), textColor: Colors.white, title: shareCurrentLocation)),
                const SizedBox(height: 12),
                const Text(
                  enterLocationManually,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: regular),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
