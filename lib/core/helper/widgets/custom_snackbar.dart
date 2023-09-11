import 'package:flutter/material.dart';
import '../../utils/styles.dart';
  void customSnackBar(BuildContext context, String errMessage) {
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.red,
        content: Text(
      errMessage,
      style: Styles.textStyle12.copyWith(color: Colors.white),
    )));
  }