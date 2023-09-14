import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/notifcations_messges.dart';

class NotificationsBottomView extends StatelessWidget {
  const NotificationsBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return NotificationsMessges(
            subtitle: 'قيد المراجعة',
            time: '١٢:٣٤',
            title: 'أبو احمد',
          );
        });
  }
}
