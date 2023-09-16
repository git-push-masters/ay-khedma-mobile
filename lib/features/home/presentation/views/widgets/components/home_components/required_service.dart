import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../../../../../../core/utils/colors.dart';

class RequiredService extends StatelessWidget {
  const RequiredService({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 143,
          width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: AppColors.kSmallContainersColor),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 17),
                        child: Container(
                          height: 92,
                          width: 92,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.kOutLineBorder),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "3 أشخاص مقدمين للخدمة",
                          style: TextStyle(fontSize: 6,color: AppColors.kPrimaryColor),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                const Text("تصليح حنفية مكسورة من الداخل",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),
                                SizedBox(width: Get.width*.2,),
                                 const Text("100ج",style: TextStyle(fontSize: 8,color: AppColors.kUnderHeadLinesColor)),
                              ],
                            ),
                            
                            Row(
                             
                              children: const [
                                Text("18/10/2023",style: TextStyle(fontSize: 8)),
                              ],
                            ),
                            Row(
                              children:const [
                                Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Icon(
                                    FontAwesomeIcons.locationPin,
                                    size: 15,
                                    color: AppColors.kPrimaryColor,
                                  ),
                                ),
                                Text(
                                  "الدقهلية , ميت غمر , شارع الجيش عمارة 6 , شقة 14",
                                  style: TextStyle(fontSize: 9),
                                ),
                              ],
                            ),
                            const Text(
                                  "وريم أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو",
                                  style: TextStyle(fontSize: 9),
                                ),
                            //Text("لوريم أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو  تيمبور ينسشمع لش مع يمن بخس "),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    width: 100,
                    text: "  تفاصيل أكثر ",
                    textStyle: TextStyle(
                        fontSize: 2, color: AppColors.kTextbuttonColor),
                    height: 18,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  SizedBox(
                    width: Get.width * .03,
                  ),
                  CustomButton(
                    backgroundColor: AppColors.kPrimaryColor,
                    width: 100,
                    text: "تواصل",
                    textStyle: TextStyle(
                        fontSize: 2, color: AppColors.kTextbuttonColor),
                    height: 18,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  SizedBox(
                    width: Get.width * .05,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
