import 'package:flutter/material.dart';
import '../sections/home_view_header_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children:const [
          SizedBox(height: 30,),
          HomeViewHeaderSection(),
        ],
      ),);
  }
}






