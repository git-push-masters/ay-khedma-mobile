import 'package:ay_khedma/features/home/presentation/views/all_services_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';
import '../components/all_services_components/sections/all_services_bottom.dart';
import '../components/home_components/service_list_view.dart';

class HomeViewSrvicesSection extends StatelessWidget {
  const HomeViewSrvicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 53,
              width: 8,
              decoration: const BoxDecoration(
                  color: AppColors.kSecondPrimaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8))),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "الخدمات",
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        const ServiceListView(),
        const ViewAllServices(),
      ],
    );
  }
}

class ViewAllServices extends StatelessWidget {
  const ViewAllServices({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const AllServicesView());
      },
      child: Container(
        height: 30,
        width: Get.width * .5,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimaryColor.withOpacity(.3)),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "عرض الكل",
              style:
                  Styles.textStyle12.copyWith(color: AppColors.kPrimaryColor),
            ),
            const Icon(
              Icons.arrow_circle_left,
              size: 20,
              color: AppColors.kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
