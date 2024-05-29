import 'package:anbar/consts/consts.dart';

Widget annualContractCard() {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 44.0),
    color: lightGreenColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      width: 285,
      height: 151,
      padding: const EdgeInsets.only(top: 15),
      child:  Column(
        children: [
          annualContract.text.fontFamily(semibold).size(32).color(blackColor).makeCentered(),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 14.0),
                child: SizedBox(
                  height: 30,
                  width: 106,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: const Text(cOrderNow,style: TextStyle(fontSize: 12,color: mediumGreenColor,fontFamily: medium),),
                  ),
                ),
              ),
              const Spacer(),
              VxBox(
                  child: Image.asset(imgAnnualContract,fit: BoxFit.cover,)
              )
                  .size(111 , 88)
                  .withRounded(value: 9.0).make()
            ],
          ),
        ],
      ),
    ),
  );
}
