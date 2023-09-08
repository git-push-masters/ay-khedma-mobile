import 'package:flutter/material.dart';
import 'widgets/map_view_body.dart';

class MyMapView extends StatelessWidget {
  const MyMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MapViewBody(),
    );
  }
}
