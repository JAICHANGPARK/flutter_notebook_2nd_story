import 'package:flutter/material.dart';

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    var deviceMedia = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Icon(Icons.fastfood),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DummySearch());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Container(
                height: 64,
                width: deviceMedia.size.width,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 8,
                      child: Container(
                        padding: EdgeInsets.only(left: 8),
                        height: 64,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.2),
                            blurRadius: 5, spreadRadius: 5,
                            offset: Offset(0, 7))
                          ]
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.location_on, color: Colors.grey,),
                            SizedBox(width: 8,),
                            Text("Tokyo, Japan",style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child:
                      Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(color: Colors.black.withOpacity(0.1),
                                  blurRadius: 5, spreadRadius: 5,
                                  offset: Offset(0, 7))
                            ]
                        ),
                        child: Center(
                          child:Transform.rotate(
                              child: Icon(Icons.tune, color: Colors.white,size: 38,),
                            angle: 0,),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 32,),
              Container(
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(
                    color: Colors.grey
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32)
                        ),
                        child: Center(
                          child: Text("Feature",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                          ),),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(32)
                        ),
                        child: Center(
                          child: Text("Near By",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),),
                        ),
                      ),
                    )

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}

class DummySearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }
}
