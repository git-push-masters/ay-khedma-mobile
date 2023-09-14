import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../../../../core/helper/custom_par_view.dart';
import '../../../../../../core/utils/styles.dart';
import 'components/calendar_type.dart';

class AppointmentsViewHeader extends StatelessWidget {
  const AppointmentsViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomParView(
          title: 'المواعيد',
        ),
        const CalendarType(),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            right: 19,
            bottom: 20,
          ),
          child: Row(
            children: [
              // SizedBox(width: Get.width*.05,),
              Text(
                "اليوم",
                textAlign: TextAlign.center,
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
