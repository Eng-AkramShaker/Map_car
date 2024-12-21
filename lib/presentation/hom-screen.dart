// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_car/controllers/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    ins();
  }

  ins() {
    final proHome = Provider.of<Controller_Home>(context, listen: false);

    proHome.addMarker(proHome.Camera_Aswan_1.target, '1');
    proHome.addMarker(proHome.Camera_Aswan_2.target, '2');
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Controller_Home>(builder: (context, proHome, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('خريطة اسوان')),
        ),
        body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: proHome.Camera_Aswan_1,
          onMapCreated: (GoogleMapController controller) {
            proHome.Map_Controller.complete(controller);
          },
          markers: proHome.markers,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.brown,
          child: const Icon(
            Icons.location_pin,
            color: Colors.yellow,
          ),
          onPressed: () async {
            //

            GoogleMapController controller_Update = await proHome.Map_Controller.future;

            controller_Update.animateCamera(
              CameraUpdate.newCameraPosition(
                const CameraPosition(target: LatLng(24.0968 + 0.00009, 32.9026), zoom: 15),
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      );
    });
  }
}
