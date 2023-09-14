import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/utils/assets.dart';
import '../../../../../../../core/utils/colors.dart';

class ServiceListView extends StatefulWidget {
  const ServiceListView({super.key});

  @override
  State<ServiceListView> createState() => _ServiceListViewState();
}

int current = -1;

class _ServiceListViewState extends State<ServiceListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 100,
        width: Get.width,
        child: CustomScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                  children: List.generate(10, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      current = index;
                    });
                  },
                  child: Transform.translate(
                    offset: Offset(0.0, current == index ? -20.0 : 0.0),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: current == index
                              ? AppColors.kSecondPrimaryColor
                              : AppColors.kListViewItemColor),
                      child: Image.asset(
                        AssetsData.serviceIte,
                      ),
                    ),
                  ),
                );
              })),
            )
          ],
        ),
      ),
    );
  }
}

//  ListView.builder(
//                 physics: const BouncingScrollPhysics(),
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 10,
//                 itemBuilder: ((context, index) {
//                   return InkWell(
//                     onTap: () {
//                       setState(() {
//                         current = index;
//                       });
//                     },
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 250),

//                     ),
//                   );
//                 })),
