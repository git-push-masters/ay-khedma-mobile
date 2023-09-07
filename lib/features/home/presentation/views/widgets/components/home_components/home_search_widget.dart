import 'package:ay_khedma/features/home/presentation/views/widgets/components/home_components/search_text_field_home.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/utils/colors.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SearchTxetFeild()),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.kPrimaryColor,
          ),
          child: const Icon(Icons.format_list_bulleted, color: Colors.white,),
        ),
      ],
    );
  }
}