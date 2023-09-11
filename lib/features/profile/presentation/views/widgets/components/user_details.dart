import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
         
          children: [
             SizedBox(
              height: 7,
              width:Get.width *.35,
            ),
            Text(
              "مصطفي مجدي ",
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "50ج/س",
              style: TextStyle(fontSize: 10, color: AppColors.kPrimaryColor),
            ),
            const SizedBox(
              width: 4,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(19),
          child: Text(
            "لوريم أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو  تيمبور نكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يود",
            textAlign: TextAlign.center,
          ),
        ),
       RatingBar.builder(
        itemSize: 20,
   initialRating: 3,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => const Icon(
     Icons.star,
     color: AppColors.kPrimaryColor,
   ),
   onRatingUpdate: (rating) {
   
   },
)
      ],
    );
  }
}
