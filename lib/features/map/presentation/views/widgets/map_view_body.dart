import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/helper/widgets/custom_text_field.dart';

class MapViewBody extends StatefulWidget {
  const MapViewBody({super.key});

  @override
  State<MapViewBody> createState() => MapViewBodyState();
}

class MapViewBodyState extends State<MapViewBody> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 19,
  );
  static final Marker _KGoogelpleaMarker = const Marker(
    markerId: MarkerId("KGooleplex"),
    infoWindow: InfoWindow(title: "Google plex"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(37.42796133580664, -122.085749655962),
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  // ignore: non_constant_identifier_names
  static final Marker _KLeMarker = Marker(
    markerId: const MarkerId("_KLeMarker"),
    infoWindow: const InfoWindow(title: "mus"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: const LatLng(37.43296265331129, -122.08832357078792),
  );
  // ignore: unused_field
  static const Polyline _kpolyline = Polyline(
    polylineId: PolylineId("_kpolyline"),
    points: [
      LatLng(37.43296265331129, -122.08832357078792),
      LatLng(37.42796133580664, -122.085749655962),
    ],
    width: 5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          mapType: MapType.normal,
          markers: {_KGoogelpleaMarker, _KLeMarker},
          polylines: {_kpolyline},
          polygons: {},
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        // Row(children: const[
        //   CustomTextFeild(hinttext: '',prefixIcon: Icon(Icons.search),)
        // ],)
      ],
      
      ),
     
    );
  }
}
