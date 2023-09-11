import 'package:ay_khedma/features/profile/presentation/views/widgets/components/custom_text_information.dart';
import 'package:ay_khedma/features/profile/presentation/views/widgets/components/header_user_information.dart';
import 'package:ay_khedma/features/profile/presentation/views/widgets/components/last_clients.dart';
import 'package:flutter/material.dart';

class UserInformations extends StatelessWidget {
  const UserInformations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderUserInformation(
          titleinfo: "المهارات",
        ),
        const Text(
          "لوريم أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو  تيمبور نكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يود",
          textAlign: TextAlign.center,
        ),
        const HeaderUserInformation(
          titleinfo: "المعلومات الشخصية",
        ),
        const CustomTextInformation(
          title: "الاسم بالكامل : ",
          suptitle: "مصطفي مجدي محمد نصر",
        ),
        const CustomTextInformation(
          title: "السن : ",
          suptitle: "21 ولساني 60",
        ),
        const CustomTextInformation(title: "الوزن : ", suptitle: "طن"),
        const CustomTextInformation(title: "المهنه : ", suptitle: "مهندس"),
        const HeaderUserInformation(
          titleinfo: "طريقة التواصل",
        ),
        const CustomTextInformation(
            title: "الايميل : ", suptitle: "Mostfammaaggddyy@gmail.com"),
        const CustomTextInformation(
            title: "رقم  الهاتف : ", suptitle: "01103770132"),
        const CustomTextInformation(
            title: "العنوان: ", suptitle: "الدقهليه ميت علي شارع عرفات "),
        const HeaderUserInformation(
          titleinfo: "آخر العملاء",
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
              lastClients(),
            ],
          ),
        ),
      ],
    );
  }
}
