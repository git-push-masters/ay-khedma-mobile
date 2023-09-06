import 'package:flutter/material.dart';

import 'widgets/components/choose_avatar_components/choose_avatar_view_body.dart';

class ChooseAvatarView extends StatelessWidget {
  const ChooseAvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChooseAvatarViewBody(),
    );
  }
}