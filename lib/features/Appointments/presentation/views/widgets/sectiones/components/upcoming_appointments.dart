import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class UpcomingAppointments extends StatelessWidget {
  const UpcomingAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:  EdgeInsets.only(bottom:  Get.width*.02, right: Get.width*.03, left: Get.width*.03),
          child: Container(
            height: Get.height*.17,
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: AppColors.kSmallContainersColor),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: Get.width*.03,right: Get.width*.03,left: Get.width*.03),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Text(
                            "15 نوفبر, 2023 - 8:00Am",
                            style: TextStyle(fontSize: Get.width*.02),
                          ),
                          Text(
                            "١٢:٣٤",
                            style: TextStyle(fontSize: Get.width*.02),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: Get.width*.01, right: Get.width*.01),
                  child: Row(
                    children: [
                      Container(
                        height: Get.height*.07,
                        width: Get.height*.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.kOutLineBorder),
                      ),
                       SizedBox(
                        width: Get.width*.01,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "أبو احمد",
                            style: Styles.textStyle12
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text("المهارات :  ",
                              style: Styles.textStyle12.copyWith(
                                  color: AppColors.kTextFieldHintColor,
                                  fontSize: Get.width*.022)),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: Get.width*.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        width: Get.width*.42,
                        text: "مراجعة وتعديل العرض",
                        textStyle: Styles.textStyle12
                            .copyWith(color: AppColors.kTextbuttonColor),
                        height: Get.height*.03,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      SizedBox(
                        width: Get.width * .03,
                      ),
                      CustomButton(
                        backgroundColor: AppColors.kPrimaryColor,
                        width: Get.width*.3,
                        text: "إلغاء",
                        textStyle: Styles.textStyle12
                            .copyWith(color: AppColors.kHeadLinesColor),
                        height: Get.height*.03,
                        borderRadius: BorderRadius.circular(8),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: Get.height*.065,
          left: Get.width*.1,
          right: Get.width*.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child:  Text(
                  "سباكة",
                  style: TextStyle(fontSize: Get.width*.03, color: AppColors.kPrimaryColor),
                ),
              ),
              RatingBar.builder(
                itemSize: Get.width*.03,
                initialRating: 4,
                minRating: 5,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: AppColors.kPrimaryColor,
                ),
                onRatingUpdate: (rating) {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
