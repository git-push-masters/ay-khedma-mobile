import 'package:ay_khedma/core/utils/styles.dart';
import 'package:ay_khedma/features/profile/presentation/views/widgets/components/cstum_app_par.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../../../../core/helper/custom_par_view.dart';
import '../../../../../../../profile/presentation/views/widgets/components/cation_user.dart';
import '../image_service.dart';

class DetailServiceHeader extends StatelessWidget {
  const DetailServiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomParView(
          title: 'تفاصيل عن الخدمة',
        ),
        const ImeageService(),
        Column(
          children: [
            Text(
              "تصليح حنفية مكسورة من الداخل",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const CantinUser()
      ],
    );
  }
}
