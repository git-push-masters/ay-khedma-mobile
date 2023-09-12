import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class MostUsedServices extends StatelessWidget {
  const MostUsedServices(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.cstuomicon});
  final String title;
  final String subtitle;
  final IconData cstuomicon;

  @override
  Widget build(BuildContext context) {
    return 
     Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                height: 133,
                width: 108,
                decoration: BoxDecoration(
                    color: AppColors.kSmallContainersColor,
                    borderRadius: BorderRadius.circular(26)),
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Icon(
          cstuomicon ,
          size: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: Styles.textStyle12.copyWith(fontWeight: FontWeight.bold),
        ),
         Text(
          subtitle,
          style: const TextStyle(fontSize: 10),
          maxLines: 2,
          textAlign: TextAlign.center,
        )
      ],
    ),
              ),
            );
   
  }
}
