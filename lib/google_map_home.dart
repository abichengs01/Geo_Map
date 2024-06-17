
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapHome extends StatefulWidget {
  const GoogleMapHome({super.key});

  @override
  State<GoogleMapHome> createState() => _GoogleMapHomeState();
}

class _GoogleMapHomeState extends State<GoogleMapHome> {
  //final LocationController= ();
  static const LatLng googleplux =  LatLng(13.073249, 80.191584);
  static const LatLng abihome =  LatLng(13.10153826400035, 80.19806024417859);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Sample App'),

      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: googleplux,
          zoom: 11.5,
        ),
        markers: {
          const Marker(markerId: MarkerId("source location"),
          icon: BitmapDescriptor.defaultMarker,
          position: googleplux
          ),

          const Marker(markerId: MarkerId("source location"),
          icon: BitmapDescriptor.defaultMarker,
          position: abihome
          ),
        },
      ),
    );

  }
}

