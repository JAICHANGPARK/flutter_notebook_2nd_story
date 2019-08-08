import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/pharmacy_app/more_page.dart';
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
  List<String> tags = ['p1', 'p2', 'p3', 'p4', 'p5'];

  List<String> tTags = ['t1', 't2', 't3', 't4', 't5'];

  List<String> sTags = ['s1', 's2', 's3', 's4', 's5'];

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
            child: Hero(
              tag: 'gmap',
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
                        Hero(
                          tag: tags[index],
                          child: Container(
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/02/19/11/40/coffee-shop-1209863_960_720.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: tTags[index],
                                child: Text(
                                  "Life Pharmacy",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Hero(
                                tag: sTags[index],
                                child: Text(
                                  "4-chōme-32-7 Jingūmae, Shibuya City, Tōkyō-to 150-0001",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return MoreDetailPage(tags: tags[index],
                                    tTags: tTags[index],
                                    sTags: sTags[index],);
                                  }));
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(color: Colors.indigo),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            right: 48,
            top: 140,
            child: Container(
              width: 90,
              height: 80,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.orangeAccent,
                        Colors.deepOrange,
                      ]),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_offer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "\$1,75",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.orange, width: 4)),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 120,
            top: 240,
            child: Container(
              width: 90,
              height: 80,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.indigoAccent,
                        Colors.blue,
                      ]),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_offer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "\$2,00",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.indigoAccent, width: 4)),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 36,
            bottom: 300,
            child: Container(
              width: 90,
              height: 80,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.indigoAccent,
                        Colors.blue,
                      ]),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_offer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "\$2,00",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.indigoAccent, width: 4)),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 80,
            bottom: 200,
            child: Container(
              width: 90,
              height: 80,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.indigoAccent,
                        Colors.blue,
                      ]),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_offer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "\$2,00",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.indigoAccent, width: 4)),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 48,
            bottom: 320,
            child: Container(
              width: 90,
              height: 80,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.indigoAccent,
                        Colors.blue,
                      ]),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_offer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "\$2,00",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.indigoAccent, width: 4)),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 230,
            child: Container(
              width: 90,
              height: 80,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.indigoAccent,
                        Colors.blue,
                      ]),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_offer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "\$2,00",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.indigoAccent, width: 4)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
