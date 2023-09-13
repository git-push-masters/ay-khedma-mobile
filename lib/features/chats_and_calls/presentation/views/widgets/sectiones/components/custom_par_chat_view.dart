import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class CustomParChatView extends StatelessWidget {
  const CustomParChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 136,
              width: Get.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36)),
                  color: AppColors.kPrimaryColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      FontAwesomeIcons.arrowRight,
                      color: AppColors.kTextbuttonColor,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Text(
                      " التواصل",
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: Get.width * .6,
                    ),
                    const Icon(
                      FontAwesomeIcons.ellipsis,
                      color: AppColors.kTextbuttonColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
  }
}