import 'package:ay_khedma/core/helper/widgets/custom_button.dart';
import 'package:ay_khedma/core/utils/assets.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:ay_khedma/features/find_location/presentation/views/widgets/secions/FindLocation_View_Center_Section.dart';
import 'package:ay_khedma/features/find_location/presentation/views/widgets/secions/FindLocation_View_Header_Section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

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





   