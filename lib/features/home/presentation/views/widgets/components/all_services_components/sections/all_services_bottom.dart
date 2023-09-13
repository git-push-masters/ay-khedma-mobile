import 'package:ay_khedma/features/home/presentation/views/widgets/components/all_services_components/sections/user_inf_rating.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../core/helper/title_right.dart';

class AllServiceBottom extends StatelessWidget {
  const AllServiceBottom({super.key, required this.titleinfo});
 final String titleinfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
         TitleRight(titleinfo: 'أفضل السباكين حواليك',),
        const UserInfoAndRating(),
        
      ],
    );
  }
}

class UserInfoAndRating extends StatelessWidget {
  const UserInfoAndRating ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:const [
          UserInfoRating(),
          UserInfoRating(),
          UserInfoRating(),
          UserInfoRating(),
          UserInfoRating(),
        ],
      ),
    );
  }
}