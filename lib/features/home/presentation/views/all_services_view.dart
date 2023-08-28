import 'package:flutter/material.dart';
import 'widgets/all_services_view_body.dart';

class AllServicesView extends StatelessWidget {
  const AllServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AllServicesViewBody(),
    );
  }
}