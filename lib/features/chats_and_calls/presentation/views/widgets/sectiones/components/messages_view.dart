import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class Messagesview extends StatelessWidget {
  const Messagesview(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.time});

  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 86,
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: AppColors.kSmallContainersColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 18, bottom: 18, right: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: AppColors.kOutLineBorder),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Styles.textStyle12
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(subtitle,
                        style: Styles.textStyle12.copyWith(
                            color: AppColors.kTextFieldHintColor,
                            fontSize: 10)),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 27,
            bottom: 49,
            left: Get.width * .1,
            child: Text(
              time,
              style: const TextStyle(fontSize: 8),
            ))
      ],
    );
  }
}
