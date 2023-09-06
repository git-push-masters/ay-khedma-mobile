import 'package:ay_khedma/core/utils/assets.dart';
import 'package:flutter/material.dart';

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

class BioViewHeaderSection extends StatelessWidget {
  const BioViewHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(AssetsData.bioHeader2),
        Image.asset(AssetsData.bioHeader1)
      ],
    ) ;
  }
}