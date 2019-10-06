import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181E27),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 48,
                ),
                Container(
                  height: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text("12", style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 58),),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("MON", style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 12
                          ),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("13",style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("14",style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("15",style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("16",style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("17",style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("18",style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("19",style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                ),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.white.withOpacity(0.7),
            width: 2,
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }
}
