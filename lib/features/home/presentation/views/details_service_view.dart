import 'package:ay_khedma/features/home/presentation/views/widgets/components/detail_service_bady.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailService extends StatelessWidget {
  const DetailService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [DetailServiceBody()],
      )),
    );
  }
}
