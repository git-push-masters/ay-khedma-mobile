
import 'package:ay_khedma/features/find_location/presentation/views/widgets/secions/fnd_location_view_center_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'secions/find_location_view_header_section.dart';

class FindLocationViewBody extends StatelessWidget {
  const FindLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children:  [
        const FindLocationViewHeaderSection(),
        SizedBox(height: Get.height*.15,),
        const FindLocationViewCenterSection(),
      ],
    ));
  }
}





   