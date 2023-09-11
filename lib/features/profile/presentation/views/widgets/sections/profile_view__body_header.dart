import 'package:ay_khedma/features/profile/presentation/views/widgets/components/cstum_app_par.dart';
import 'package:ay_khedma/features/profile/presentation/views/widgets/components/user_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../components/cation_user.dart';

class ProfileViewBodyHeader extends StatelessWidget {
  const ProfileViewBodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustuomAppPar(),
        SizedBox(height: Get.height * .1),
        const UserDetails(),
        const CantinUser()
      ],
    );
  }
}
