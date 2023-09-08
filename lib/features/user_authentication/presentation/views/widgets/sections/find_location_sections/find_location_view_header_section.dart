import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/utils/assets.dart';
import '../../../../../../../core/utils/colors.dart';

class FindLocationViewHeaderSection extends StatelessWidget {
  const FindLocationViewHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(left: 0, child: Image.asset(AssetsData.findLocationHeader)),
        Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                padding: const EdgeInsets.only(
                  top: 32,
                  right: 32,
                ),
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  FontAwesomeIcons.arrowRight,
                  color: AppColors.kPrimaryColor,
                ))),
      ],
    );
  }
}
