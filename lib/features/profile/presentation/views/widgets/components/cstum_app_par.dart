import 'package:ay_khedma/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CustuomAppPar extends StatelessWidget {
  const CustuomAppPar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 136,
          width: Get.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: AppColors.kSmallContainersColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  FontAwesomeIcons.arrowRight,
                  color: AppColors.kPrimaryColor,
                ),
                Icon(
                  FontAwesomeIcons.ellipsis,
                  color: AppColors.kPrimaryColor,
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: Get.height * .1,
          child: Container(
            height: 130,
            width: 130,
            decoration: const BoxDecoration(
              color: AppColors.kOutLineBorder,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
