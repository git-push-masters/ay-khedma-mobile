import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../../core/helper/global_var.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.kOutLineBorder,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.network(myUserModel!.body!.avatar!),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("أهلا بيك",
                style: Styles.textStyle12.copyWith(
                    fontSize: 10, color: AppColors.kUnderHeadLinesColor)),
            const SizedBox(
              height: 5,
            ),
              Text(
              myUserModel!.body!.name,
              style: Styles.textStyle12,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_on,
              color: AppColors.kPrimaryColor,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.plus,
              color: AppColors.kPrimaryColor,
              size: 20,
            ))
      ],
    );
  }
}
