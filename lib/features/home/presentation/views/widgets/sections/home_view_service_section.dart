import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';
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
        const ServiceListView(),
      ],
    );
  }
}