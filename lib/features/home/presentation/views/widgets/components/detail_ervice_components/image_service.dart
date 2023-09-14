import 'package:ay_khedma/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ImeageService extends StatelessWidget {
  const ImeageService({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 19),
      child: Container(
        width: Get.width * .4,
        height: Get.height * .2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41),
            color: AppColors.kTextFieldHintColor),
      ),
    );
  }
}
