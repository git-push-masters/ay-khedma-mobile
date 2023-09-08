import 'package:flutter/material.dart';
import '../../sections/otp_sections/otp_view_bottom_section.dart';
import '../../sections/otp_sections/otp_view_header_section.dart';

class OtpCodeViewBody extends StatelessWidget {
  const OtpCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 28,
            ),
            OtpViewHeaderSection(),
            OtpViewBottomSection()
          ],
        ),
      ),
    );
  }
}
