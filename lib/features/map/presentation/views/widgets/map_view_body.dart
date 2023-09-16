import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';  


class MapViewBody extends StatefulWidget {
  const MapViewBody({super.key});

  @override
  State<MapViewBody> createState() => MapViewBodyState();
}

class MapViewBodyState extends State<MapViewBody> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.038121, 31.368673),
    zoom: 14,
  );
  // ignore: constant_identifier_names
  static const Marker _KGoogelpleaMarker = Marker(
      markerId: MarkerId("KGooleplex"),
      infoWindow: InfoWindow(title: " ابراهيم النمر"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(31.036312, 31.369905));
  // ignore: constant_identifier_names
  static const Marker _Klake2 = Marker(
      markerId: MarkerId("KGooleplex"),
      infoWindow: InfoWindow(title: " شربني  "),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(31.034621, 31.359333));
  // ignore: constant_identifier_names
  static const Marker _Klake3 = Marker(
      markerId: MarkerId("KGooleplex"),
      infoWindow: InfoWindow(title: "أبو احمد"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(31.046109, 31.367065));

  // ignore: non_constant_identifier_names
  static final Marker _KLeMarker = Marker(
    markerId: const MarkerId("_KLeMarker"),
    infoWindow: const InfoWindow(title: "سيف سويلم"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: const LatLng(31.036240, 31.368224),
  );
  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GoogleMap(
          mapType: MapType.normal,
          markers: {_KGoogelpleaMarker, _KLeMarker, _Klake2, _Klake3},
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ],
    ));
  }
}
