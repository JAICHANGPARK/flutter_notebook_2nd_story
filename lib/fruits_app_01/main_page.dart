import 'package:flutter/material.dart';

class FruitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainAppPage(),
    );
  }
}

class MainAppPage extends StatefulWidget {
  @override
  _MainAppPageState createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 16,),
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 28,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,child: Icon(Icons.wb_sunny)),
                      Expanded(
                        flex: 8,
                        child: Container(
                          height: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          padding: EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.location_on,
                              size: 16,),
                              Text("Delivery to the: Southeast Seattle..."),
                              Icon(Icons.play_arrow,
                                size: 16,)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,child: Icon(Icons.search)),
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






















