import 'package:ay_khedma/features/profile/presentation/views/widgets/components/user_informations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileViewBodyBottom extends StatelessWidget {
  const ProfileViewBodyBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [UserInformations()],
    );
  }
}
