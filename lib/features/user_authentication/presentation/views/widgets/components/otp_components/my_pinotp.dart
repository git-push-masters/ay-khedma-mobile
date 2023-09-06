import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MyPinOtp extends StatelessWidget {
   MyPinOtp({super.key, this.pinController});

   TextEditingController? pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle:Styles.textStyle14,
  decoration: BoxDecoration(
    border: Border.all(color:AppColors.kOutLineBorder),
    borderRadius: BorderRadius.circular(20),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color:AppColors.kPrimaryColor),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color:AppColors.kPrimaryColor.withOpacity(.3),)
);

return Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      submittedPinTheme: submittedPinTheme,
                      keyboardType: TextInputType.number,
                      controller:pinController,
                      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                      textInputAction: TextInputAction.next,
                      showCursor: true,
                      validator: (value) => value!.isEmpty ? "Enter pin code" : null
                    );
  }
}