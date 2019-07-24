import 'package:flutter/material.dart';

class RestaurantFoodOrderApp extends StatelessWidget {
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

class _MainPageState extends State<MainPage> with
SingleTickerProviderStateMixin{
  AnimationController _animationController;
  Animation<double> _buttonAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(
      seconds: 1
    ));
    _buttonAnimation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.grey,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.grey,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  "Explore our\nDelicious Offers",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 280,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      width: 210,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.redAccent,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2018/08/30/20/47/gugelhupf-3643259_960_720.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Almost Famous",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Chinese, South indian"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      width: 210,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.redAccent,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2016/02/29/00/19/cake-1227842_960_720.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Almost Famous",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Chinese, South indian"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Divider(
                  color: Colors.grey,
                  indent: 4,
                  endIndent: 4,
                  height: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 16),
                child: Row(
                  children: <Widget>[
                    Text("Near Me (15)"),
                    Spacer(),
                    Icon(Icons.tune),
                    Text("Filter")
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 110,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2018/09/09/21/58/dounat-3665638_960_720.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 240,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Royal Food Count",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.greenAccent,
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        "Open",
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                              Text("Chinese, South indian"),
                              SizedBox(height: 8,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, size: 12,
                                  color: Colors.grey,),
                                  Text("100-102 High St, Manchester, UK",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 110,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2018/09/09/21/58/dounat-3665638_960_720.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 240,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Royal Food Count",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.greenAccent,
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        "Open",
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                              Text("Chinese, South indian"),
                              SizedBox(height: 8,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, size: 12,
                                    color: Colors.grey,),
                                  Text("100-102 High St, Manchester, UK",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 110,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2018/09/09/21/58/dounat-3665638_960_720.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 240,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Royal Food Count",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.greenAccent,
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        "Open",
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                              Text("Chinese, South indian"),
                              SizedBox(height: 8,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, size: 12,
                                    color: Colors.grey,),
                                  Text("100-102 High St, Manchester, UK",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 110,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2018/09/09/21/58/dounat-3665638_960_720.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 240,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Royal Food Count",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.greenAccent,
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        "Open",
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                              Text("Chinese, South indian"),
                              SizedBox(height: 8,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, size: 12,
                                    color: Colors.grey,),
                                  Text("100-102 High St, Manchester, UK",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(_animationController.status == AnimationStatus.completed){
          _animationController.reverse();
        }else  _animationController.forward();

      },
      child: AnimatedIcon(icon: AnimatedIcons.add_event, progress: _buttonAnimation),),
    );
  }
}



















