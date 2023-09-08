import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../sections/find_location_sections/find_location_view_header_section.dart';
import '../../sections/find_location_sections/fnd_location_view_center_section.dart';

class FindLocationViewBody extends StatelessWidget {
  const FindLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const FindLocationViewHeaderSection(),
        SizedBox(
          height: Get.height * .15,
        ),
        const FindLocationViewCenterSection(),
      ],
    ));
  }
}
