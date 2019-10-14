import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/exchange_finder/app_styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExchangeMapPage extends StatefulWidget {
  @override
  _ExchangeMapPageState createState() => _ExchangeMapPageState();
}

class _ExchangeMapPageState extends State<ExchangeMapPage> {
  Color topViewColor = Color(0xffA28835);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Hero(
              tag: "maps",
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    target: LatLng(37.42796133580664, -122.085749655962),
                    zoom: 14),
              ),
            ),
          ),
          Positioned(
            left: ApplicationPadding.appLeftPadding,
            top: 0,
            child: Container(
              height: 134,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(color: topViewColor),
              padding: EdgeInsets.only(left: 8, top: 24, bottom: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      print("back button pressed");
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Exchange",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Points",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 240,
            top: 240,
            left: 64,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: topViewColor, width: 3),
                shape: BoxShape.circle
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: ApplicationPadding.appLeftPadding,
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                color: Colors.red[200]
              ),
              padding: EdgeInsets.symmetric(vertical: 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Black Rose", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),),
                  Text("Exchange",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                  ),),
                  FloatingActionButton(
                    backgroundColor: Colors.red[300],
                    heroTag: "clock",
                    child: Icon(Icons.timer),
                    onPressed: (){},
                  ),
                  Text("00:10", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),),
                  Text("240m to destination Go", style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),)
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 100,
            child: Container(
              height: 64,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.purple
              ),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.directions_run, color: Colors.white,),
                  Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}















