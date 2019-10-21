import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FashionHomePage(),
    );
  }
}

class FashionHomePage extends StatefulWidget {
  @override
  _FashionHomePageState createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
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
                      onPressed: (){
                        Fluttertoast.showToast(msg: "Pressed Menu Icon",
                        backgroundColor: Colors.green);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                        iconSize: 38,
                      onPressed: (){
                        Fluttertoast.showToast(msg: "Pressed Search Icon",
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
                  child: Text("Fashion",style: TextStyle(
                    fontSize: 38
                  ),),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 24),
                      width: MediaQuery.of(context).size.width - 120,
                      decoration: BoxDecoration(
                        color: Colors.red
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 120,
                      decoration: BoxDecoration(
                          color: Colors.red
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(height: 0,thickness: 2,),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
























