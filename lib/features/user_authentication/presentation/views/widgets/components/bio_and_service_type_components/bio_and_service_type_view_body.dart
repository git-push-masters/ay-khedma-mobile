import 'package:ay_khedma/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../sections/bio_and_service_type_section/bio_view_center_section.dart';
import '../../sections/bio_and_service_type_section/bio_view_header_section.dart';
import '../general_components/text_feild_comp.dart';

class BioAndServiceTypeViewBody extends StatelessWidget {
  const BioAndServiceTypeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BioViewHeaderSection(),
            SizedBox(
              height: Get.height * .3,
            ),
            const BioViewCenterSection(),
          ],
        ),
      ),
    );
  }
}


