import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../../core/helper/custom_par_view.dart';
import '../../../../../../../../core/helper/title_right.dart';
import '../../../../../../../../core/utils/colors.dart';

class AllServicesHeader extends StatelessWidget {
  const AllServicesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: const[
           CustomParView(title: "جميع الخدمات",)
          
          ],
        ),
         const Padding(
           padding: EdgeInsets.symmetric(vertical: 25),
           child: TitleRight(titleinfo: "الخدمات الأكثر استخدامًا",)
         )
      ],
      
    );
  }
}