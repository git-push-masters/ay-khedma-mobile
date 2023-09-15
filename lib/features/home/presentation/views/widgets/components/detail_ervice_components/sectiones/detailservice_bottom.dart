import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../../../../core/helper/title_right.dart';
import '../../../../../../../notifications/presentation/views/widgets/components/notifcations_messges.dart';
import '../../../../../../../profile/presentation/views/widgets/components/user_details.dart';

class DetailserviceBottom extends StatelessWidget {
  const DetailserviceBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleRight(
          titleinfo: 'تفاصيل عن الخدمة',
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
              "لوريم أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو  تيمبور ينسشمع لش مع يمن بخس لوريم أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو  تيمبور ينسشمع لش مع يمن بخس "),
        ),
        const TitleRight(
          titleinfo: ' تفاصيل عن طالب الخدمة ',
        ),
        NotificationsMessges(
          time: '',
          subtitle: 'المهنه: مهندس',
          title: 'أبو احمد',
        )
      ],
    );
  }
}
