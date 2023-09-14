import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../../core/helper/custom_par_view.dart';
import '../../../../../../core/helper/title_right.dart';
import '../../../../../chats_and_calls/presentation/views/widgets/sectiones/components/par_search_widget.dart';

class NotificationsHeaderView extends StatelessWidget {
  const NotificationsHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomParView(
          title: "الإشعارات",
        ),
        ParSearchWidget(
          title: 'ابحث عن الأشعارات',
        ),
        TitleRight(
          titleinfo: 'اليوم',
        )
      ],
    );
  }
}
