import 'package:anbar/consts/consts.dart';
import 'package:anbar/controllers/home_controller.dart';
import 'package:anbar/views/home_screen/home_screen.dart';
import 'package:anbar/views/notification_screen/notification_screen.dart';
import 'package:anbar/views/orders_screen/orders_screen.dart';
import 'package:anbar/views/promotion_screen/promotion_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: IndexedStack(
                index: controller.currentNavIndex.value,
                children: const [
                  HomeScreen(),
                  OrderScreen(),
                  PromotionScreen(),
                  NotificationScreen()
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: primaryColor,
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: whiteColor,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            items: List.generate(
                4,
                (index) => BottomNavigationBarItem(
                    icon: Image.asset(
                      index == controller.currentNavIndex.value
                          ? getSelectedIcon(index)
                          : getUnselectedIcon(index),
                      width: 26,
                    ),
                    label: getLabel(index))),
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          )),
    );
  }



}
