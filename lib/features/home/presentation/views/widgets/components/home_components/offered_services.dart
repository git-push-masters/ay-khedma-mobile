import 'package:ay_khedma/features/home/presentation/views/widgets/components/home_components/required_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../../../core/helper/title_right.dart';
import '../../../../../../Appointments/presentation/views/widgets/sectiones/appointments_view.dart';

class OfferedServices extends StatelessWidget {
  const OfferedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleRight(
          titleinfo: 'أفضل السباكين حواليك',
        ),
        ListView.builder(itemBuilder: (context,index){
          return const RequiredService();
        }),
      ],
    );
  }
}
