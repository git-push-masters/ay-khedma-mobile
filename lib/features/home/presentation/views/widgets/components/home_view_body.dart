import 'package:flutter/material.dart';
import '../sections/home_view_header_section.dart';
import '../sections/home_view_service_section.dart';

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



