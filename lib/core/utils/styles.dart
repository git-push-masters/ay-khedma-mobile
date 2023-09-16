import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

abstract class Styles {
  static const textStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static  TextStyle textStyle12 = TextStyle(
      fontSize: Get.width*.02, fontWeight: FontWeight.normal, color: Colors.black);
}
