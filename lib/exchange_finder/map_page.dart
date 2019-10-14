import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExchangeMapPage extends StatefulWidget {
  @override
  _ExchangeMapPageState createState() => _ExchangeMapPageState();
}

class _ExchangeMapPageState extends State<ExchangeMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(left: 0,right: 0,top: 0,bottom: 0,
          child: Hero(
            tag: "maps",
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(37.42796133580664, -122.085749655962),
                zoom: 14
              ),
            ),
          ),)
        ],
      ),
    );
  }
}
