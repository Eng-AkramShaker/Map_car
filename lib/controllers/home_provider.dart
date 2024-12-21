// ignore_for_file: avoid_print, non_constant_identifier_names, empty_catches, unnecessary_string_interpolations, camel_case_types, unused_element, avoid_types_as_parameter_names, constant_identifier_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Controller_Home with ChangeNotifier {
  //

  final Completer<GoogleMapController> Map_Controller = Completer();

  final Set<Marker> markers = {};

  //   أسوان ===================================

  CameraPosition Camera_Aswan_1 = const CameraPosition(target: LatLng(24.0968 + 0.00009, 32.9026), zoom: 15);
  CameraPosition Camera_Aswan_2 = const CameraPosition(target: LatLng(24.0878, 32.9026), zoom: 15);

  // add Marker  ===================================

  void addMarker(LatLng position, String id) {
    markers.add(
      Marker(
        markerId: MarkerId(id),
        position: position,
        infoWindow: InfoWindow(title: id),
      ),
    );
  }
}
