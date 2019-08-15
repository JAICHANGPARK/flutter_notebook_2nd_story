import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController _googleMapController;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        accentColor: Colors.teal,
        iconTheme: IconThemeData(
          color: Colors.teal
        )
      ),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            GoogleMap(
              initialCameraPosition:
              CameraPosition(target: LatLng(34.985582, 135.755550), zoom: 18),
              onMapCreated: (gmc){
                _googleMapController = gmc;
              },
            ),
            Positioned(
              left: 16,
              right: 16,
              top: 48,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 2,
                      spreadRadius: 1)
                ]),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.tune),
                    border: InputBorder.none,
                    hintText: "Search..."
                  ),
                ),
              ),
            ),

            Positioned(
              right: 16,
              top: 200,
              child: Column(
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: "adds",
                    child: Icon(Icons.add,
                    color: Colors.teal,
                    size: 38,),
                    backgroundColor: Colors.white,
                    onPressed: (){},
                  ),
                  SizedBox(height: 16,),
                  FloatingActionButton(
                    heroTag: "minus",
                    child: Icon(Icons.remove,
                      color: Colors.teal,
                      size: 38,),
                    backgroundColor: Colors.white,
                    onPressed: (){},
                  ),
                  SizedBox(height: 32,),
                  FloatingActionButton(
                    heroTag: "loacation",
                    child: Icon(Icons.location_searching,
                      color: Colors.teal,
                      size: 38,),
                    backgroundColor: Colors.white,
                    onPressed: (){},
                  )
                ],
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child:Container(
                height: 280,
                margin: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)
                            ),
                            image: DecorationImage(image:
                            NetworkImage("https://cdn.pixabay.com/photo/2018/02/22/17/09/barber-shop-3173422__340.jpg"),
                                fit: BoxFit.cover)
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 16,
                              top: 16,
                              child: IconButton(icon:
                                  Icon(Icons.favorite_border,
                                  color: Colors.white,), onPressed: (){}),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(left: 16, top: 8, right: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Rogue and Beyond"),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "174A Telok ayer St",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 34,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.greenAccent
                                          .withOpacity(0.2),
                                      borderRadius:
                                      BorderRadius.circular(16)),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.timer,
                                        color: Colors.teal,
                                      ),
                                      Text(
                                        "11:00-22:00",
                                        style:
                                        TextStyle(color: Colors.teal),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16,),
                                Container(
                                    height: 34,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(16)),
                                    child: Center(
                                      child: Text(
                                        "4.5",
                                        style: TextStyle(color: Colors.teal),
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}



















