import 'package:flutter/material.dart';
import '../../../../../../core/helper/header_user_information.dart';
import '../sections/home_view_header_section.dart';
import '../sections/home_view_service_section.dart';
import 'all_services_components/sections/all_services_bottom.dart';

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
            
            AllServiceBottom(titleinfo: "افضل السباكين حولك",),
            SizedBox(
              height: 26,
            ),
             Center(child: ViewAllServices()),
              SizedBox(
              height: 26,
            ),
             AllServiceBottom(titleinfo: "طالبي خدمات السباكه",),
             Center(child: ViewAllServices()),
              SizedBox(
              height: 26,
            ),
          ],
        ),)
        ],
        
      ),
    );
  }
}



