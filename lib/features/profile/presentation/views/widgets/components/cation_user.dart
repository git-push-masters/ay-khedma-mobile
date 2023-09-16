import 'package:ay_khedma/core/helper/widgets/custom_button.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CantinUser extends StatelessWidget {
  const CantinUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.kPrimaryColor),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Icon(
              FontAwesomeIcons.locationDot,
              size: 11,
              color: AppColors.kPrimaryColor,
            ),
          ),
          const SizedBox(
            width: 11,
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.kPrimaryColor),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Icon(
              FontAwesomeIcons.phone,
              size: 11,
              color: AppColors.kPrimaryColor,
              //size: .4,
            ),
          ),
          const SizedBox(
            width: 11,
          ),
          Expanded(
              child: CustomButton(
            text: "محادثه",
            textStyle:
                Styles.textStyle12.copyWith(color: AppColors.kTextbuttonColor),
            height: Get.height*.03,
            borderRadius: BorderRadius.circular(8),
          ))
        ],
      ),
    );
  }
}
