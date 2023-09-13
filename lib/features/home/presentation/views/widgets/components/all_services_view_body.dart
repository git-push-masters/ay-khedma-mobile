import 'package:flutter/material.dart';

import 'all_services_components/sections/all_services_bottom.dart';
import 'all_services_components/sections/all_services_center.dart';
import 'all_services_components/sections/all_services_header.dart';

class AllServicesViewBody extends StatelessWidget {
  const AllServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: const [
            AllServicesHeader(),
            AllServicesCenter(),
            AllServiceBottom(titleinfo: "افضل السباكين حولك",)
          ],),
        ),
      ),
    );
  }
}
