import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchoolApp extends StatelessWidget {
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

class _MainPageState extends State<MainPage> {
  Widget _buildTopUI(){
    return  Container(
      height: MediaQuery.of(context).size.height / 1.9,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/06/07/13/11/landscape-4258253_960_720.jpg"),
                      fit: BoxFit.cover),
                  color: Colors.red[100]),
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),
          Positioned(
            left: 8,
            top: 48,
            right: 38,
            child: Container(
              height: 64,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                  ),
                  Spacer(),
                  Text(
                    "School Events",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 6.5,
            bottom: 0,
            left: 16,
            right: 16,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 24, left: 16, right: 16, bottom: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.red[400], width: 2)),
                      child: Center(
                        child: Icon(
                          Icons.school,
                          size: 38,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "St. Dreamwalker School",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[300]),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.red[200],
                        ),
                        Text(
                          "576 Sebastin arcade, NY, 123456",
                          style: TextStyle(
                              color: Colors.indigo[300],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.red[200],
                        ),
                        Text(
                          "123-4567-8901",
                          style: TextStyle(
                              color: Colors.indigo[300],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          fit: FlexFit.loose,
                          flex: 1,
                          child: Container(
                            height: 48,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius:
                                BorderRadius.circular(16)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "380",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Followers",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          flex: 1,
                          child: Container(
                            height: 48,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.green[400],
                                borderRadius:
                                BorderRadius.circular(16)),
                            child: Center(
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTopUI(),

          ],
        ),
      ),
    );
  }
}






















