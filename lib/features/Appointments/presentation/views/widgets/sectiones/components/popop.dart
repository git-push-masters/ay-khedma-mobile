import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../../../../../../core/utils/colors.dart';

class RequiredService extends StatelessWidget {
  const RequiredService({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:  Get.height*.02,left:  Get.width*.02,right:  Get.width*.02),
      child: Container(
        height: Get.height*.2,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            color: AppColors.kSmallContainersColor),
        child: Row(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: Get.height*.03, right: Get.width*.01),
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
                          child: FittedBox(
                            child: Text(
                              "3 أشخاص مقدمين للخدمة",
                              style: TextStyle(fontSize: 6,color: AppColors.kPrimaryColor),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.all(Get.width*.02),
                                child: Row(
                                  children: [
                                     Text("تصليح حنفية مكسورة من الداخل",style: TextStyle(fontSize: Get.width*.02,fontWeight: FontWeight.bold),),
                                    SizedBox(width: Get.width*.2,),
                                      Text("100ج",style: TextStyle(fontSize: Get.width*.02,color: AppColors.kUnderHeadLinesColor)),
                                  ],
                                ),
                              ),
                              
                              Row(
                               
                                children:  [
                                  Text("18/10/2023",style: TextStyle(fontSize: Get.width*.02)),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Icon(
                                      FontAwesomeIcons.locationPin,
                                      size: Get.width*.03,
                                      color: AppColors.kPrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    "الدقهلية , ميت غمر , شارع الجيش عمارة 6 , شقة 14",
                                    style: TextStyle(fontSize: Get.width*.02),
                                  ),
                                ],
                              ),
                                               SizedBox(height: Get.height*.01,),

                               Text(
                                    "وريم أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو",
                                    style: TextStyle(fontSize: Get.width*.02),
                                  ),
                            ],
                          )
                        ],
                      ),
                    ),
                   
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: Get.width * .3,
                    ),
                    
                    CustomButton(
                      width: Get.width*.25,
                      text: "  تفاصيل أكثر ",
                      textStyle:  TextStyle(
                          fontSize: Get.width*.02, color: AppColors.kTextbuttonColor),
                      height: Get.height*.03,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    SizedBox(
                      width: Get.width * .03,
                    ),
                    CustomButton(
                      backgroundColor: AppColors.kPrimaryColor,
                      width: Get.width*.25,
                      text: "تواصل",
                      textStyle:  TextStyle(
                          fontSize: Get.width*.02, color: AppColors.kTextbuttonColor),
                      height: Get.height*.03,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

