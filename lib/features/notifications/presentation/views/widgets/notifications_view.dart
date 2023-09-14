import 'package:ay_khedma/features/notifications/presentation/views/widgets/sections/notifications_bottom_view.dart';
import 'package:ay_khedma/features/notifications/presentation/views/widgets/sections/notifications_header_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            NotificationsHeaderView(),
            Expanded(child: NotificationsBottomView())
          ],
        ),
      ),
    );
  }
}
