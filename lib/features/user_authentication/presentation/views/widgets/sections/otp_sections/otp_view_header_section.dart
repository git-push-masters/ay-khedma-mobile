import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../components/otp_components/my_pinotp.dart';

class OtpViewHeaderSection extends StatelessWidget {
  const OtpViewHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
             children: [
               IconButton(
                  padding:const EdgeInsets.only(right: 20),
                  onPressed: (){
                    GoRouter.of(context).pop();
                  }, icon: const Icon(FontAwesomeIcons.arrowRight, color: AppColors.kPrimaryColor,)),
             ],
           ),
           const SizedBox(height: 13,),
            const Text("التأكد من رقم هاتفك", style: Styles.textStyle16),
            const SizedBox(height: 7,),
            Text("ادخل الرمز المكون من 4 ارقام", style: Styles.textStyle14.copyWith(color: AppColors.kOutLineBorder),),
            const SizedBox(height: 29,),
             MyPinOtp(),
      ],
    );
  }
}
