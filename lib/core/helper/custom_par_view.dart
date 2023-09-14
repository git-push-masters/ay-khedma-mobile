import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomParView extends StatelessWidget {
  const CustomParView({super.key, required this.title});
  final String title;
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
                  title,
                  style: Styles.textStyle16.copyWith(color: Colors.white),
                ),
                Spacer(),
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
