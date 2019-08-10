import 'package:flutter/material.dart';

class BubbleTeaDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 16,
            top: 24,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("DreamWalker Shop"),
                        Text("Roppongi, Tokyo"),
                      ],
                    ),
                    Spacer(),

                    Column(
                      children: <Widget>[
                        Text("20"),
                        Text('mins')
                      ],
                    ),
                    SizedBox(width: 16,),
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 5
                        )
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            right: 0,
                            child:Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red
                              ),
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
                Divider(height: 16,),
                SizedBox(height: 16,),
                Text("NEW DRINKS",style: TextStyle(
                  fontSize: 12
                ),),
              ],
            ),
          ),
          Positioned(
            left: 16,
            top: 140,
            right: 0,
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                color: Colors.red
              ),
              child: ListView(),
            ),
          )
        ],
      ),
    );
  }
}





















































