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
          padding: const EdgeInsets.only(bottom: 19,right: 19,left: 19),
          child: Container(
            height: 205,
            width: 352,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: AppColors.kSmallContainersColor),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "15 نوفبر, 2023 - 8:00Am"
                           ,
                            style: TextStyle(fontSize: 8),
                          ),
                          Text(
                             "١٢:٣٤"
                            ,
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 22),
                  child: Row(
                    children: [
                      Container(
                        height: 76,
                        width: 76,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.kOutLineBorder),
                      ),
                      const SizedBox(
                  width: 8,
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
                            fontSize: 10)),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 27,),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   CustomButton(
            width: 191,
              text: "مراجعة وتعديل العرض",
              textStyle:
                  Styles.textStyle12.copyWith(color: AppColors.kTextbuttonColor),
              height: 30,
              borderRadius: BorderRadius.circular(8),
            ),
            SizedBox(width: Get.width*.03,),
            CustomButton(
              backgroundColor: AppColors.kPrimaryColor ,
              width: 100,
              text: "إلغاء",
              textStyle:
              Styles.textStyle12.copyWith(color: AppColors.kHeadLinesColor),
              height: 28,
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
          top: 100,
          left: 35,
          right: 105,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){}, child: const Text(
                            "سباكة"
                           ,
                            style: TextStyle(fontSize: 8,color: AppColors.kPrimaryColor),
                          ),),
              RatingBar.builder(
                itemSize: 12,
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
