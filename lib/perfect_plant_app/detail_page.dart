import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String imgIndex;

  DetailPage({this.imgIndex});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Hero(
              tag: widget.imgIndex,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/11/24/19/49/vase-1857081_960_720.png"),
                        fit: BoxFit.fitHeight)),
              ),
            ),
          ),
          Positioned(
              left: 16,
              top: 36,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 2 - 80,
            child: Container(
              margin: EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 1)
                  ]),
              padding: EdgeInsets.only(left: 24, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Succulents",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      "In general, Succulents are desert plants with thick,"
                      "fleshy leaves. Some of them have spines and some none."
                      "Agave is an example of a popular succulent, along with aloe and "
                      "popular echeveria rosettes.",
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 1.2,
                          wordSpacing: 1.5),
                    ),
                  ),
                  Spacer(),
                  Text("How to take care of it".toUpperCase()),
                  Container(
                    height: 160,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 24,
            top: MediaQuery.of(context).size.height / 2 - 80,
            child: FloatingActionButton(
              child: Icon(
                Icons.add,
                size: 38,
              ),
              backgroundColor: Colors.teal,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
