import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/utils/assets.dart';
import '../../../../../../../core/utils/colors.dart';

class ServiceListView extends StatefulWidget {
  const ServiceListView({super.key});

  @override
  State<ServiceListView> createState() => _ServiceListViewState();
}

int current = 0;

class _ServiceListViewState extends State<ServiceListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
            height: 50,
            width: Get.width,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      height: current == index ? 75 : 50,
                      width: current == index ? 75 : 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: current == index
                              ? AppColors.kSecondPrimaryColor
                              : AppColors.kListViewItemColor),
                      child: Image.asset(
                        AssetsData.serviceIte,
                      ),
                    ),
                  );
                })),
          ),
 );
  }
}