import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserInformations extends StatelessWidget {
  const UserInformations({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text("المهارات",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold,),),
      Container(height: 53,
      width: 8,)
    ],);
  }
}