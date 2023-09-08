import 'package:flutter/material.dart';

import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class SearchTxetFeild extends StatelessWidget {
  const SearchTxetFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(16)),
      child: TextField(
        decoration: InputDecoration(
          hintText: "ابحث عن الخدمات والعروض!",
          hintStyle: Styles.textStyle12
              .copyWith(color: AppColors.kUnderHeadLinesColor),
          suffixIcon: const Icon(
            Icons.search,
            color: AppColors.kOutLineBorder,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
