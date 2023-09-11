import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextInformation extends StatelessWidget {
  const CustomTextInformation({
    super.key,
    required this.title,
    required this.suptitle,
  });
  final String title;
  final String suptitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            title,
            style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(suptitle)
        ],
      ),
    );
  }
}
