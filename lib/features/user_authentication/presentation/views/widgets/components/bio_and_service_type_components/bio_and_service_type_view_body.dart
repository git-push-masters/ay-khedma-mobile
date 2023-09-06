import 'package:flutter/material.dart';
import '../../sections/bio_and_service_type_section/bio_view_header_section.dart';

class BioAndServiceTypeViewBody extends StatelessWidget {
  const BioAndServiceTypeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const[
          BioViewHeaderSection()
        ],
      ),
    );
  }
}

