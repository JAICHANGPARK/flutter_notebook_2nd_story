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
  List<Widget> avatarWidget = [
    CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(
          "https://cdn.pixabay.com/photo/2015/09/02/12/58/woman-918788__340.jpg"),
    ),
    CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(
          "https://cdn.pixabay.com/photo/2016/11/29/06/46/adult-1867887__340.jpg"),
    ),
    CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(
          "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg"),
    ),
    CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(
          "https://cdn.pixabay.com/photo/2017/04/06/19/34/girl-2209147__340.jpg"),
    ),
  ];

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
                height: 58,
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
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  offset: Offset(0, 7))
                            ]),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Tokyo, Japan",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  offset: Offset(0, 7))
                            ]),
                        child: Center(
                          child: Transform.rotate(
                            child: Icon(
                              Icons.tune,
                              color: Colors.white,
                              size: 38,
                            ),
                            angle: 0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32)),
                        child: Center(
                          child: Text(
                            "Feature",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(32)),
                        child: Center(
                          child: Text(
                            "Near By",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Near By Friends",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: avatarWidget),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 260,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 2,
                          spreadRadius: 1
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Card()
                  ),
                  SizedBox(height: 16,),
                  Container(
                      height: 260,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2,
                              spreadRadius: 1
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Card()
                  ),
                  SizedBox(height: 16,),
                  Container(
                      height: 260,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2,
                              spreadRadius: 1
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Card()
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
              image: DecorationImage(image: 
              NetworkImage("https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467__340.jpg"),
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.darken),
              fit: BoxFit.cover)
            ),
            child: Stack(
              children: <Widget>[Positioned(
                left: 8,
                bottom: 8,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              )],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Salad Bling Bling",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                    Icon(Icons.access_time, size: 16,
                    color: Colors.grey,),
                    Text("60 Min",
                    style: TextStyle(
                      fontSize: 12
                    ),)
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star_border, color: Colors.yellow,)
                  ],
                ),
                SizedBox(height: 8,),
                Text("基本１０００円から・表参道")
              ],
            ),
          ),
        )
      ],

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






































