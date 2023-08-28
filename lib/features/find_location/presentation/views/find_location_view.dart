import 'package:flutter/material.dart';
import 'widgets/find_location_view_body.dart';

class FindLocationView extends StatelessWidget {
  const FindLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:FindLocationViewBody() ,
    );
  }
}