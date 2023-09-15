import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../home/presentation/views/widgets/components/home_components/required_service.dart';
import 'components/upcoming_appointments.dart';

class AppointmentsViewBottom extends StatelessWidget {
  const AppointmentsViewBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (contex, index) {
           // return const RequiredService();
            return const UpcomingAppointments();
          }),
    );
  }
}
