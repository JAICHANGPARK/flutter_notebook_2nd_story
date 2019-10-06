import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_notebook_second_story/fitness_app_set_running_goal/main_page.dart';

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
                      Text(
                        "12",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 58),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "MON",
                            style: TextStyle(
                                color: Colors.redAccent, fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "13",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "14",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "15",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "16",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "17",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "18",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "19",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    height: 120,
                  ),
                  SizedBox(
                    height: 80,
                    width: 120,
                    child: Text(
                      "Select \na Run",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: 84,
                  ),
                  Container(
                    height: 72,
                    padding:
                        EdgeInsets.only(left: 16, right: 0, top: 0, bottom: 8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            "Free\nRun",
                            style: TextStyle(
                                color: Colors.tealAccent,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topCenter,
                          child: IconButton(icon: Icon(Icons.add), onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=>MainPage()
                            ));
                          },
                          iconSize: 38,
                          color: Colors.grey,
                          padding: EdgeInsets.zero,),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
