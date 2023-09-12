import 'package:ay_khedma/features/home/presentation/views/widgets/components/all_services_components/sections/all_services_header.dart';
import 'package:ay_khedma/features/home/presentation/views/widgets/components/all_services_view_body.dart';
import 'package:flutter/material.dart';

class AllServicesView extends StatelessWidget {
  const AllServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:AllServicesViewBody()
    );
  }
}