import 'package:flutter/material.dart';

class TravelerApp extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //TODO Implementation App Bar
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 48
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Traveler", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),),
                      Spacer(),
                      Icon(Icons.search),
                      SizedBox(width: 16,),
                      CircleAvatar()
                    ],
                  ),
                  Text("Finding your travel experience",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                  ),)
                ],
              ),
            ),
          ),
          //TODO Implementation Popular
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Polular", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      Spacer(),
                      Text("see more",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey
                      ),)
                    ],
                  ),
                  ListView.builder(itemBuilder: (context, index){

                    return Container();
                  },
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,)
                ],
              ),
            ),
          ),
          //TODO Tabbar
          Expanded(
            flex: 1,
            child: Placeholder(),
          ),
          //TODO Tabbar View
          Expanded(
            flex: 3,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}

























