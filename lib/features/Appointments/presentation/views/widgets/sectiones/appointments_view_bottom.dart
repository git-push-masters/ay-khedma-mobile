import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'components/upcoming_appointments.dart';

class AppointmentsViewBottom extends StatelessWidget {
  const AppointmentsViewBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (contex, index) {
            return const UpcomingAppointments();
          }),
    );
  }
}
