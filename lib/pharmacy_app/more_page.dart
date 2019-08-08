import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MoreDetailPage extends StatefulWidget {
  final String tags;
  final String tTags;
  final String sTags;

  MoreDetailPage({this.tags, this.tTags,this.sTags});

  @override
  _MoreDetailPageState createState() => _MoreDetailPageState();
}

class _MoreDetailPageState extends State<MoreDetailPage> {
  GoogleMapController _googleMapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
            Hero(
              tag: widget.tags,
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/02/19/11/40/coffee-shop-1209863_960_720.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height - 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                height: 38,
              ),
                  Hero(
                    tag: widget.tTags,
                    child: Text(
                      "Life Pharmacy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 38
                      ),
                    ),
                  ),
                  Hero(
                    tag: widget.sTags,
                    child: Text(
                      "4-chōme-32-7 Jingūmae, Shibuya City, Tōkyō-to 150-0001",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Hero(
                    tag: 'gmap',
                    child: Container(
                      height: 280,
                      child: GoogleMap(
                          onMapCreated: (controller) {
                            _googleMapController = controller;
                          },
                          initialCameraPosition: CameraPosition(
                              target: LatLng(35.672576, 139.709942),
                              zoom: 18)),
                    ),
                  ),

                ],
              ),
            )
        ],
      ),
    );
  }
}




























