import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:ay_khedma/features/home/presentation/views/widgets/components/all_services_components/sections/user_inf_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../../../../core/helper/header_user_information.dart';

class AllServiceBottom extends StatelessWidget {
  const AllServiceBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         HeaderUserInformation(
          titleinfo: 'أفضل السباكين حواليك',
        ),
        UserInfoRating(),
        UserInfoRating(),
        UserInfoRating(),
        UserInfoRating(),
        UserInfoRating(),
      ],
    );
  }
}
