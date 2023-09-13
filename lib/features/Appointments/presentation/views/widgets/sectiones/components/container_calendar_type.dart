import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../../../core/utils/colors.dart';

class ContainerCalendarType extends StatelessWidget {
  const ContainerCalendarType({super.key, this.color, required this.title, });
final Color? color;
final String title;
  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 43,
            width: 113,
            decoration: BoxDecoration(
              color: color ?? AppColors.kOutLineBorder,
              
                borderRadius: BorderRadius.circular(16)),
                child:   Center(child: Text(title,style: const TextStyle(color:Colors.white,)),
               
          ));
  }
}