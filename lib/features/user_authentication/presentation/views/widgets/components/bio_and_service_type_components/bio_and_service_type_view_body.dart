import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../sections/bio_and_service_type_section/bio_view_bottom_section.dart';
import '../../sections/bio_and_service_type_section/bio_view_center_section.dart';
import '../../sections/bio_and_service_type_section/bio_view_header_section.dart';

class BioAndServiceTypeViewBody extends StatelessWidget {
  const BioAndServiceTypeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 28,),
            const BioViewHeaderSection(),
            SizedBox(
              height: Get.height * .3,
            ),
            const BioViewCenterSection(),
            const SizedBox(
              height: 20,
            ),
            const BioViewBottomSection()
          ],
        ),
      ),
    );
  }
}




