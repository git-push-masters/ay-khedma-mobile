import 'package:flutter/material.dart';

import 'widgets/components/otp_components/otp_code_view_body.dart';

class OtpCodeView extends StatelessWidget {
  const OtpCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpCodeViewBody(),
    );
  }
}