import 'package:flutter/material.dart';

class AnicornWatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailPage(),
    );
  }
}

class DetailPage extends StatefulWidget {
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
            right: 8,
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(colors: [
                    Colors.redAccent,
                    Colors.redAccent.withOpacity(0.8),
                    Colors.orange[200],
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(34))),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: 16,
                    top: 16,
                    bottom: 24,
                    child: Container(
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 160,
              decoration: BoxDecoration(color: Colors.grey[200]),
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: AppBar(
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart),
                )
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                color: Colors.black,
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 120,
            child: Container(
              height: 300,
              width: 120,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Series".toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "000".toUpperCase(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "size".toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Small",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "price".toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "\$410".toUpperCase(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [
                                Colors.redAccent,
                                Colors.orange[200],
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.red[50],
                                blurRadius: 10,
                                spreadRadius: 10)
                          ]),
                      child: Center(
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]),
            ),
          ),
          Positioned(
            left: 120,
            top: 72,
            child: Container(
              width: 180,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.searchpng.com/wp-content/uploads/2019/01/Apple-Watch-Apple-Watch-Iwatch-PNG-Image-715x715.png"),
                      fit: BoxFit.fitHeight)),
            ),
          )
        ],
      ),
    );
  }
}
