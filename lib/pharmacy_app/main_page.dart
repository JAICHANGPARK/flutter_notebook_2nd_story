import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PharmacyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapPage(),
    );
  }
}

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController _googleMapController;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: GoogleMap(
                onMapCreated: (controller) {
                  _googleMapController = controller;
                },
                initialCameraPosition: CameraPosition(
                    target: LatLng(35.672576, 139.709942),
                    bearing: 190,
                    tilt: 60,
                    zoom: 18)),
          ),
          Positioned(
            top: 38,
            left: 24,
            right: 24,
            child: Container(
              height: 54,
              padding: EdgeInsets.only(left: 16, right: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 2)
                  ]),
              child: Center(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                      hintText: "Search Pharmacy",
                      suffixIcon: Icon(Icons.close)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 16,
            right: 0,
            child: Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 16, bottom: 8),
                    width: MediaQuery.of(context).size.width - 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 2)
                        ]),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(image:
                            NetworkImage("https://cdn.pixabay.com/photo/2016/02/19/11/40/coffee-shop-1209863_960_720.jpg"),
                            fit: BoxFit.cover)
                          ),
                        ),
                        SizedBox(width: 16,),
                        SizedBox(
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Life Pharmacy", style: TextStyle(
                                fontWeight: FontWeight.bold,

                              ),),
                              Text("4-chōme-32-7 Jingūmae, Shibuya City, Tōkyō-to 150-0001",
                              style: TextStyle(
                                fontSize: 10
                              ),),
                              Text("Open", style: TextStyle(
                                color: Colors.indigo
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}































