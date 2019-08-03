import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:avatar_glow/avatar_glow.dart';

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
  Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _animation = Tween(begin: 24.0, end: 480.0).animate(_animationController)
    ..addListener((){
      print(_animation.value);
      setState(() {
      });
    })..addStatusListener((as){
      print(_animation.value);
      if(as == AnimationStatus.completed){
        setState(() {
          animationDone = !animationDone;
        });
      }
      });

//    _animationController.forward();
  }

  Future<String> getMapStyleFile(String path) async {
    return await rootBundle.loadString(path);
  }

  void setMapStyle(String ms) {
    _googleMapController.setMapStyle(ms);
  }
  bool cardClicked = false;
  bool animationDone = false;
  @override
  Widget build(BuildContext context) {
//    getMapStyleFile("assets/sliver.json").then(setMapStyle);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            initialCameraPosition: CameraPosition(
                target: LatLng(
                    35.615635, 139.802290,
                ),
                zoom: 13),
            onMapCreated: (GoogleMapController controller) {
              _googleMapController = controller;
              getMapStyleFile("assets/silver.json").then(setMapStyle);
            },
          ),
          Positioned(
            top: 60,
            right: 140,
            child: InkWell(
              onTap: (){
                setState(() {
                  cardClicked = !cardClicked;
                  Future.delayed(Duration(seconds: 1), (){
                    _animationController.forward();
                  });
                });
              },
              child: AvatarGlow(
                startDelay: Duration(milliseconds: 1000),
                duration: Duration(milliseconds: 2000),
                repeat: true,
                showTwoGlows: true,
                glowColor: Colors.greenAccent,
                repeatPauseDuration: Duration(milliseconds: 100),
                child: Material(
                  elevation: 8,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.greenAccent,
                  ),
                ), endRadius: 90,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 1000),
            bottom: animationDone ? 0 : (cardClicked ? 480 : 16),
            top: cardClicked ? 0 : 480,
            left: animationDone ? 0 : 16,
            right: animationDone ? 0 : 16,
            child: AnimatedContainer(
              height: _animation.value,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.15),
                    blurRadius: 5,
                    spreadRadius: 2)
                  ],
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://media0.giphy.com/media/VbtazImyVmwrAhz3CI/giphy.gif?cid=790b76115d45766b502f644b6b490cc7&rid=giphy.gif"),
                  fit: BoxFit.cover)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 24,
                    left: 24,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Tokyo", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),),
                        SizedBox(height: 8,),
                        Text("GINZA", style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  )
                ],
              ), duration: Duration(milliseconds: 500),
            ),
          ),

//          Positioned(
//            top: _animation.value,
//            bottom: 8,
//            right: 8,
//            left: 8,
//            child: Container(
//              height: 240,
//              margin: EdgeInsets.all(8),
//              decoration: BoxDecoration(
//                  color: Colors.white,
//                  borderRadius: BorderRadius.circular(24),
//                  boxShadow: [
//                    BoxShadow(color: Colors.black.withOpacity(0.15),
//                    blurRadius: 5,
//                    spreadRadius: 2)
//                  ],
//                  image: DecorationImage(
//                      image: NetworkImage(
//                          "https://media0.giphy.com/media/VbtazImyVmwrAhz3CI/giphy.gif?cid=790b76115d45766b502f644b6b490cc7&rid=giphy.gif"),
//                  fit: BoxFit.cover)),
//              child: Stack(
//                children: <Widget>[
//                  Positioned(
//                    bottom: 24,
//                    left: 24,
//                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        Text("Tokyo", style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 18
//                        ),),
//                        SizedBox(height: 8,),
//                        Text("GINZA", style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 24,
//                          fontWeight: FontWeight.bold
//                        ),)
//                      ],
//                    ),
//                  )
//                ],
//              ),
//            ),
//          )
        ],
      ),
    );
  }
}


























