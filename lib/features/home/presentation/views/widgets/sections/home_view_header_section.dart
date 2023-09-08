import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/utils/assets.dart';
import '../components/home_components/home_app_bar.dart';
import '../components/home_components/home_search_widget.dart';

class HomeViewHeaderSection extends StatelessWidget {
  const HomeViewHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Column(
        children: [
          const HomeAppBar(),
          const SizedBox(
            height: 21,
          ),
          const HomeSearchWidget(),
          const SizedBox(
            height: 21,
          ),
          Container(
            height: 180,
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    image: AssetImage(AssetsData.poster), fit: BoxFit.fill)),
          )
        ],
      ),
    );
  }
}
