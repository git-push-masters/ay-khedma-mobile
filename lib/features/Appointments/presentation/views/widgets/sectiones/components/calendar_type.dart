import 'package:ay_khedma/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'container_calendar_type.dart';

class CalendarType extends StatelessWidget {
  const CalendarType({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:  Get.width*.04, right: Get.width*.01, left:  Get.width*.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ContainerCalendarType(
            color: AppColors.kPrimaryColor,
            title: 'قادم',
          ),
          ContainerCalendarType(
            title: 'مكتمل',
          ),
          ContainerCalendarType(
            title: 'ملغي',
          ),
        ],
      ),
    );
  }
}
