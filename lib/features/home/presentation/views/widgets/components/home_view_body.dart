import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../sections/home_view_header_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 30,
          ),
          HomeViewHeaderSection(),
          SizedBox(
            height: 26,
          ),
          HomeViewSrvicesSection(),
        ],
      ),
    );
  }
}

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
        const ServiceListView(),
      ],
    );
  }
}

class ServiceListView extends StatelessWidget {
  const ServiceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          clipBehavior: Clip.hardEdge,
          height: 85,
          width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.kSmall2ContainersColor),
          child: SizedBox(
            height: 50,
            width: Get.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.kListViewItemColor),
                  );
                })),
          ),
        ));
  }
}
