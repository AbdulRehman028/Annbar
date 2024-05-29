import 'package:anbar/consts/consts.dart';
import 'package:anbar/views/home_screen/components/annual_contract_crd.dart';
import 'package:anbar/views/home_screen/components/heading_with_seeall.dart';
import 'package:anbar/views/home_screen/components/home_Button.dart';
import 'package:anbar/views/home_screen/components/home_bg.dart';
import 'package:anbar/views/home_screen/components/hot_product.dart';
import 'package:anbar/views/home_screen/components/hot_services.dart';
import 'package:anbar/views/home_screen/components/hvac_service_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return homeBgWidget(
      child: Scaffold(
        endDrawer: Drawer(
          child: ListView(
            children: const <Widget>[
              ListTile(title: Text("Item 1")),
              ListTile(title: Text("Item 2")),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        30.heightBox,
                        Row(
                          children: [
                            Image.asset(logo, width: 165, height: 45),
                            const Spacer(),
                            Builder(
                              builder: (context) {
                                return IconButton(
                                  icon: const Icon(Icons.menu, color: whiteColor),
                                  // The menu icon
                                  onPressed: () =>
                                      Scaffold.of(context).openEndDrawer(),
                                );
                              }
                            )
                          ],
                        ),
                        37.heightBox,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                  fontFamily: medium,
                                  fontSize: 19.5,
                                  color: textfieldGrey),
                              hintText: hintIWantTo,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: textfieldGrey,
                                size: 24,
                              ),
                              fillColor: lightGrey,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ],),),
              27.heightBox,
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      hvacServiceCard(),
                      30.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ourServices.text
                            .size(18)
                            .fontFamily(semibold)
                            .make(),
                      ),
                      15.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          4,
                          (index) => homeButtons(
                            onPressed: () {},
                            height: 56,
                            width: 54,
                            icon: index == 0
                                ? icAc
                                : index == 1
                                    ? icPlumber
                                    : index == 2
                                        ? icMachine
                                        : icSeeAll,
                            title: index == 0
                                ? acRepair
                                : index == 1
                                    ? plumbing
                                    : index == 2
                                        ? electrician
                                        : seeAll,
                          ),
                        ),
                      ),
                      20.heightBox,
                      const HeadingSeeAll(text: hotService),
                      20.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            3,
                                (index) => hotServices(
                              onPressed: () {},
                              height: 154,
                              width: 139,
                              img: index == 0
                                  ? imgSlider1
                                  : index == 1
                                  ? imgSlider2
                                  : imgSlider3,
                              title: index == 0
                                  ? acCleaning
                                  : index == 1
                                  ? acInstallation
                                  : seeAll,
                            ),
                          ),
                        ),
                      ),
                      27.heightBox,
                      annualContractCard(),
                      25.heightBox,
                      const HeadingSeeAll(text: hotProducts),
                      20.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            3,
                                (index) => homeProducts(
                                  onPressed: index == 0 ? handlePress0
                                      : index == 1 ? handlePress1
                                      : handlePress2,
                              height: 93,
                              width: 110,
                              img: index == 0
                                  ? imgProduct1
                                  : index == 1
                                  ? imgProduct2
                                  : imgProduct3,
                              title: index == 0
                                  ? thermostat
                                  : index == 1
                                  ? acKit
                                  : thermistor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}