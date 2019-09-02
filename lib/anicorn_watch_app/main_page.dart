import 'package:flutter/cupertino.dart';
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
                      "004".toUpperCase(),
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
                      "\$499".toUpperCase(),
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
          ),
          Positioned(
            left: 24,
            bottom: 16,
            right: 0,
            child: Container(
              height: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rose & Gold",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  Text(
                    "Apple Watch Series 4",
                    style: TextStyle(fontSize: 26, letterSpacing: 1.2),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: 300,
                      child: Text(
                        "Apple Watch Series 4. Fundamentally redesigned and re‑engineered to help you be even more active, healthy, and connected.",
                        style: TextStyle(
                            wordSpacing: 1.2, letterSpacing: 1.2, fontSize: 12),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 116,
                    margin: EdgeInsets.only(right: 16),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.orange,
                                          width: 2
                                        )
                                      ),
                                      child: Center(
                                        child: Icon(Icons.directions_run,
                                        color: Colors.orange,),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Movement", style: TextStyle
                                          (fontSize: 16,
                                        letterSpacing: 1.3,
                                        fontWeight: FontWeight.bold),),
                                        SizedBox(height: 4,),
                                        Text("13m2", style: TextStyle(
                                          fontSize: 12
                                        ),)

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.red,
                                              width: 2
                                          )
                                      ),
                                      child: Center(
                                        child: Icon(Icons.data_usage,
                                          color: Colors.red,),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Accuracy", style: TextStyle
                                          (fontSize: 16,
                                            letterSpacing: 1.3,
                                            fontWeight: FontWeight.bold),),
                                        SizedBox(height: 4,),
                                        Text("20-+40 sec", style: TextStyle(
                                            fontSize: 12
                                        ),)

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.lightBlueAccent,
                                              width: 2
                                          )
                                      ),
                                      child: Center(
                                        child: Icon(Icons.whatshot,
                                          color: Colors.lightBlueAccent,),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Resistance", style: TextStyle
                                          (fontSize: 16,
                                            letterSpacing: 1.3,
                                            fontWeight: FontWeight.bold),),
                                        SizedBox(height: 4,),
                                        Text("50 meters", style: TextStyle(
                                            fontSize: 12
                                        ),)

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.indigoAccent,
                                              width: 2
                                          )
                                      ),
                                      child: Center(
                                        child: Icon(Icons.tune,
                                          color: Colors.indigoAccent,),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Function", style: TextStyle
                                          (fontSize: 16,
                                            letterSpacing: 1.3,
                                            fontWeight: FontWeight.bold),),
                                        SizedBox(height: 4,),
                                        Text("Hrs/min/sec", style: TextStyle(
                                            fontSize: 12
                                        ),)

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
