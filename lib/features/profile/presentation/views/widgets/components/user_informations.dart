import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserInformations extends StatelessWidget {
  const UserInformations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 53,
              width: 8,
              decoration: const BoxDecoration(
                color: AppColors.kSecondPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7), bottomLeft: Radius.circular(7)),
              ),
            ),
            const SizedBox(width: 10,),
            Text(
              "المهارات",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
          ],
        ),
        const Text(
            "لوريم أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو  تيمبور نكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يود",
            textAlign: TextAlign.center,
          ),
           Row(
          children: [
            Container(
              height: 53,
              width: 8,
              decoration: const BoxDecoration(
                color: AppColors.kSecondPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7), bottomLeft: Radius.circular(7)),
              ),
            ),
            const SizedBox(width: 10,),
            Text(
              "المعلومات الشخصية",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          
            
          ],
        ),
           Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Text("الاسم بالكامل : ",style: Styles.textStyle12.copyWith(fontWeight:FontWeight.w600 ),),
                 const SizedBox(width: 15,),
                 const Text("مصطفي مجدي محمد نصر")
               ],
             ),
           ),
            Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Text("السن :",style: Styles.textStyle12.copyWith(fontWeight:FontWeight.w600 ),),
                 const SizedBox(width: 55,),
                 const Text("21 ولساني 60")
               ],
             ),
           ), Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Text("الوزن :",style: Styles.textStyle12.copyWith(fontWeight:FontWeight.w600 ),),
                 const SizedBox(width: 55,),
                 const Text("طن")
               ],
             ),
           ), Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Text("الطول:",style: Styles.textStyle12.copyWith(fontWeight:FontWeight.w600 ),),
                 const SizedBox(width: 55,),
                 const Text("فدان")
               ],
             ),
           ), Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Text("المهنة: ",style: Styles.textStyle12.copyWith(fontWeight:FontWeight.w600 ),),
                 const SizedBox(width: 50,),
                 const Text("مهندس")
               ],
             ),
           ), 
            Row(
          children: [
            Container(
              height: 53,
              width: 8,
              decoration: const BoxDecoration(
                color: AppColors.kSecondPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7), bottomLeft: Radius.circular(7)),
              ),
            ),
            const SizedBox(width: 10,),
            Text(
              "طريقة التواصل",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          
            
          ],
        ),Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Text("الايميل: ",style: Styles.textStyle12.copyWith(fontWeight:FontWeight.w600 ),),
                 const SizedBox(width: 50,),
                 const Text("Mostfammaaggddyy@gmail.com")
               ],
             ),
           ), Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Text("رقم الهاتف: ",style: Styles.textStyle12.copyWith(fontWeight:FontWeight.w600 ),),
                 const SizedBox(width: 50,),
                 const Text("01103770132")
               ],
             ),
           ), Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Text("العنوان:",style: Styles.textStyle12.copyWith(fontWeight:FontWeight.w600 ),),
                 const SizedBox(width: 50,),
                 const Text("الدقهله ميت علي ش عرفات ")
               ],
             ),
           ), 
           
      ],
    );
  }
}
