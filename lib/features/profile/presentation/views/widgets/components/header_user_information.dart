import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';

class HeaderUserInformation extends StatelessWidget {
  const HeaderUserInformation({super.key, required this.titleinfo});
  final String titleinfo;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 53,
          width: 8,
          decoration: const BoxDecoration(
            color: AppColors.kSecondPrimaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7), bottomLeft: Radius.circular(7)),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          titleinfo,
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
