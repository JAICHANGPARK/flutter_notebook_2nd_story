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
  AnimationController _scaleAnimationController;
  Animation<double> scaleAnimation;
  Animation<double> _animation;
  bool cardClicked = false;
  bool animationDone = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _scaleAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 24.0, end: 480.0).animate(_animationController)
      ..addListener(() {
        print(_animation.value);
        setState(() {});
      })
      ..addStatusListener((as) {
        print(_animation.value);
        if (as == AnimationStatus.completed) {
          Future.delayed(Duration(milliseconds: 200), () {
            _scaleAnimationController.forward();
          });
          setState(() {
            animationDone = !animationDone;
          });
        }
      });

    scaleAnimation =
        CurveTween(curve: Curves.bounceIn).animate(_scaleAnimationController)
          ..addListener(() {
            setState(() {});
          });
//        Tween(begin: 0.0, end: 1.0).animate(_scaleAnimationController)
//          ..addListener(() {
//            setState(() {});
//          });

//    _animationController.forward();
  }

  Future<String> getMapStyleFile(String path) async {
    return await rootBundle.loadString(path);
  }

  void setMapStyle(String ms) {
    _googleMapController.setMapStyle(ms);
  }

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
            initialCameraPosition:
                CameraPosition(target: LatLng(35.659299, 139.764483), zoom: 13),
            onMapCreated: (GoogleMapController controller) {
              _googleMapController = controller;
              getMapStyleFile("assets/silver.json").then(setMapStyle);
            },
          ),
          Positioned(
            top: 60,
            right: 140,
            child: InkWell(
              onTap: () {
                setState(() {
                  cardClicked = !cardClicked;
                  Future.delayed(Duration(seconds: 1), () {
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
                ),
                endRadius: 90,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
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
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
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
                        Text(
                          "Tokyo",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "GINZA",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              duration: Duration(milliseconds: 500),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 1200),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              height: animationDone ? 320 : 0,
              curve: Curves.bounceIn,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 52,
                    ),
                    Text(
                      "GINZA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          letterSpacing: 1.5),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Tokyo".toUpperCase(),
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 2,
                      width: 68,
                      decoration: BoxDecoration(color: Colors.cyan),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 280,
                      child: Text(
                        "Ginza (銀座) is a district of Chūō, Tokyo, located south of Yaesu and Kyōbashi, west of Tsukiji, east of Yūrakuchō and Uchisaiwaichō, and north of Shinbashi. It is a popular upscale shopping area of Tokyo, with numerous internationally renowned department stores, boutiques, restaurants and coffeehouses located in its vicinity. It is considered one of the most expensive, elegant, and luxurious streets in the world.",
                        style:
                            TextStyle(color: Colors.grey, letterSpacing: 1.5),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 280,
            left: 160,
            child: ScaleTransition(
              scale: _scaleAnimationController,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 8),
                    shape: BoxShape.circle),
                child: Center(
                  child: Transform.rotate(
                    angle: 0.7,
                    child: Icon(
                      Icons.flight,
                      color: Colors.white,
                      size: 42,
                    ),
                  ),
                ),
              ),
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
