import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class ParSearchWidget extends StatelessWidget {
  const ParSearchWidget(
      {super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 21),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(16)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: title,
                  hintStyle: Styles.textStyle12
                      .copyWith(color: AppColors.kUnderHeadLinesColor),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: AppColors.kOutLineBorder,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.kPrimaryColor,
            ),
            child: const Icon(
              Icons.format_list_bulleted,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
