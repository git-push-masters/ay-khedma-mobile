import 'package:ay_khedma/features/home/presentation/views/widgets/components/home_components/required_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/helper/title_right.dart';

class OfferedServices extends StatelessWidget {
  const OfferedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleRight(
          titleinfo: 'طالبي خدمات السباكة',
        ),
        SizedBox(
          height: Get.height * 1/3,
          width: Get.width,
          child: ListView.builder(
            itemBuilder: (context,index){
            return const RequiredService();
          }),
        ),
      ],
    );
  }
}
