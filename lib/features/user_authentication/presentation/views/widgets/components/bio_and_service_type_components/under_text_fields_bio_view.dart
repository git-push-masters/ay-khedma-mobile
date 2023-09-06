import 'package:flutter/material.dart';

import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class UnderTxetFeildsBioViw extends StatelessWidget {
  const UnderTxetFeildsBioViw({
    super.key,
    required this.txt,
  });

  final String txt;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_box_outline_blank,
          color: AppColors.kOutLineBorder,
        ),
        const Text(
          "  اوافق علي عرض",
          style: Styles.textStyle12,
        ),
        Text(
          " $txt",
          style: Styles.textStyle12.copyWith(color: AppColors.kPrimaryColor),
        ),
      ],
    );
  }
}