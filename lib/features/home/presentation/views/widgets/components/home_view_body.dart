import 'package:flutter/material.dart';
import '../sections/home_view_header_section.dart';
import '../sections/home_view_service_section.dart';
import 'all_services_components/sections/all_services_bottom.dart';
import 'home_components/offered_services.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
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
                AllServiceBottom(
                  titleinfo: "افضل السباكين حولك",
                ),
                SizedBox(
                  height: 26,
                ),
                Center(child: ViewAllServices()),
                SizedBox(
                  height: 26,
                ),
                OfferedServices(),
                Center(child: ViewAllServices()),
                SizedBox(
                  height: 26,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
