import 'package:ay_khedma/features/profile/presentation/views/widgets/sections/Ppofile_view_body_bottom.dart';
import 'package:flutter/material.dart';

import 'sections/profile_view__body_header.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [ProfileViewBodyHeader(), ProfileViewBodyBottom()],
          ),
        ),
      ),
    );
  }
}
