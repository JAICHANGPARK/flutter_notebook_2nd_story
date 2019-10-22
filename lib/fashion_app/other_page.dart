import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OtherPage extends StatefulWidget {
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      iconSize: 38,
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: "Pressed Menu Icon",
                            backgroundColor: Colors.green);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 38,
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: "Pressed Search Icon",
                            backgroundColor: Colors.green);
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Fashion",
                    style: TextStyle(fontSize: 38),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Placeholder(),
                    ),
                    Expanded(
                      flex: 2,
                      child: Placeholder(),
                    )

                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 24),
                child: Container(
                  color: Colors.blueGrey[50],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Height"),
                            Text(
                              "175 cm",
                              style: TextStyle(fontSize: 21),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Bust"),
                            Text(
                              "81 cm",
                              style: TextStyle(fontSize: 21),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.camera_alt),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "6,473",
                              style: TextStyle(fontSize: 21),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
