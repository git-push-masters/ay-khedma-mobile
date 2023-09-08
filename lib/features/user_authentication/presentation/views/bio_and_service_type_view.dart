import 'package:flutter/material.dart';

import 'widgets/components/bio_and_service_type_components/bio_and_service_type_view_body.dart';

class BioAndServiceTypeView extends StatelessWidget {
  const BioAndServiceTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BioAndServiceTypeViewBody(),
    );
  }
}
