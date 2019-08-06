import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/furniture_app/top_widget.dart';

class FurnitureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _buildBackgroundWidget(BuildContext context) {
    return [
      Positioned(
        left: 0,
        right: 0,
        top: 0,
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(color: Color(0xffffcc1e)),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            color: Color(0xfffcf8e7),
          ),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ..._buildBackgroundWidget(context).map((m) => m),
          Positioned(
            top: 38,
            left: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hi Dreamwalker",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return TopCardList();
                      }),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Update 24',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3.3,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 2,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, idx) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 8),
                          height: MediaQuery.of(context).size.height / 6.6,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 1,
                                spreadRadius: 1
                              )
                            ]
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 8,
                                left: 8,
                                bottom: 8,
                                child: Container(
                                  width: 100,
                                  child: Placeholder(),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                left: 124,
                                bottom: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("AUTUMN CHAIR"),
                                    Text("design by dreamwalker"),
                                    Spacer(),
                                    RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                              color: Color(0xffd78b2e),
                                            ),
                                            children: [
                                              TextSpan(text: "129",style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "USB", style: TextStyle(
                                                fontSize: 12,

                                              )),
                                            ]
                                        )
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


















