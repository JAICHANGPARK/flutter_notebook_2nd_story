import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TravelAppWithAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  GoogleMapController _googleMapController;
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
  }

  Future<String> getMapStyleFile(String path) async {
    return await rootBundle.loadString(path);
  }

  void setMapStyle(String ms) {
    _googleMapController.setMapStyle(ms);
  }

  @override
  Widget build(BuildContext context) {
    getMapStyleFile("assets/sliver.json").then(setMapStyle);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(
                  35.687332,
                  139.754912,
                ),
                zoom: 13),
            onMapCreated: (GoogleMapController controller) {
              _googleMapController = controller;
              getMapStyleFile("assets/silver.json").then(setMapStyle);
            },
          ),
        ],
      ),
    );
  }
}























