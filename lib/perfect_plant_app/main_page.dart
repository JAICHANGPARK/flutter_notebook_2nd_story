import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PerfectPlantApp extends StatelessWidget {
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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              padding: EdgeInsets.only(left: 24),
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken),
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/11/20/08/03/flowerpot-1842098_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 48,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 32,
                  ),
                  Text(
                    "My Plants",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).size.height / 2.8 - 20,
            child: Container(
              height: 38,
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 2)
                  ]),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        color: Colors.tealAccent,
                      ),
                      hintText: "Search for a plant",
                      hintStyle: TextStyle(fontSize: 14)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 2.6,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 8,
                                  right: 8,
                                  bottom: 8,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(colors: <Color>[
                                      Colors.teal[100],
                                      Colors.teal[300]
                                    ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight
                                    ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 5,
                                          spreadRadius: 1
                                        )
                                      ]
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.local_florist,
                                            color: Colors.teal,),
                                          ),
                                        ),
                                        Spacer(),
                                        Text("INDOOR",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 12
                                        ),),
                                        Text("Succulents",
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(1),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                          ),),
                                       SizedBox(height: 8,),
                                       Row(
                                         children: <Widget>[
                                           Container(
                                             height: 28,
                                             width: 28,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(4),
                                               border: Border.all(
                                                 color: Colors.white
                                               )
                                             ),
                                             child: Center(
                                               child: Icon(Icons.wb_sunny,
                                               color: Colors.white,
                                               size: 18,),
                                             ),
                                           ),
                                          SizedBox(width: 8,),
                                           Container(
                                             height: 28,
                                             width: 28,
                                             decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(4),
                                                 border: Border.all(
                                                     color: Colors.white
                                                 )
                                             ),
                                             child: Center(
                                               child: Icon(Icons.local_drink,
                                               color: Colors.white,size: 18,),
                                             ),
                                           ),
                                           SizedBox(width: 8,),
                                           Container(
                                             height: 28,
                                             width: 28,
                                             decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(4),
                                                 border: Border.all(
                                                     color: Colors.white
                                                 )
                                             ),
                                             child: Center(
                                               child: Icon(Icons.terrain,
                                                 color: Colors.white,size: 18,),
                                             ),
                                           )
                                         ],
                                       )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 48,
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2016/11/24/19/49/vase-1857081_960_720.png"
                                        ),
                                          fit: BoxFit.fitHeight
                                      )
                                    ),
                                  ),

                                )

                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 8,
                                  right: 8,
                                  bottom: 8,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(colors: <Color>[
                                          Colors.teal[100],
                                          Colors.teal[300]
                                        ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black.withOpacity(0.1),
                                              blurRadius: 5,
                                              spreadRadius: 1
                                          )
                                        ]
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.local_florist,
                                              color: Colors.teal,),
                                          ),
                                        ),
                                        Spacer(),
                                        Text("INDOOR",
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(0.5),
                                              fontSize: 12
                                          ),),
                                        Text("Devil's Ivy",
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(1),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600
                                          ),),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                              child: Center(
                                                child: Icon(Icons.wb_sunny,
                                                  color: Colors.white,
                                                  size: 18,),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                              child: Center(
                                                child: Icon(Icons.local_drink,
                                                  color: Colors.white,size: 18,),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                              child: Center(
                                                child: Icon(Icons.terrain,
                                                  color: Colors.white,size: 18,),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 48,
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2017/07/23/09/25/tulips-2530865_960_720.png"
                                            ),
                                          fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                )

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 8,
                                  right: 8,
                                  bottom: 8,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(colors: <Color>[
                                          Colors.teal[100],
                                          Colors.teal[300]
                                        ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black.withOpacity(0.1),
                                              blurRadius: 5,
                                              spreadRadius: 1
                                          )
                                        ]
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.local_florist,
                                              color: Colors.teal,),
                                          ),
                                        ),
                                        Spacer(),
                                        Text("INDOOR",
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(0.5),
                                              fontSize: 12
                                          ),),
                                        Text("Peace Lily",
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(1),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600
                                          ),),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                              child: Center(
                                                child: Icon(Icons.wb_sunny,
                                                  color: Colors.white,
                                                  size: 18,),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                              child: Center(
                                                child: Icon(Icons.local_drink,
                                                  color: Colors.white,size: 18,),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                              child: Center(
                                                child: Icon(Icons.terrain,
                                                  color: Colors.white,size: 18,),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 48,
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2016/11/24/19/49/vase-1857081_960_720.png"
                                            ),
                                            fit: BoxFit.fitHeight
                                        )
                                    ),
                                  ),

                                )

                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 8,
                                  right: 8,
                                  bottom: 8,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(colors: <Color>[
                                          Colors.teal[100],
                                          Colors.teal[300]
                                        ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black.withOpacity(0.1),
                                              blurRadius: 5,
                                              spreadRadius: 1
                                          )
                                        ]
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.local_florist,
                                              color: Colors.teal,),
                                          ),
                                        ),
                                        Spacer(),
                                        Text("INDOOR",
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(0.5),
                                              fontSize: 12
                                          ),),
                                        Text("Cactus",
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(1),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600
                                          ),),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                              child: Center(
                                                child: Icon(Icons.wb_sunny,
                                                  color: Colors.white,
                                                  size: 18,),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                              child: Center(
                                                child: Icon(Icons.local_drink,
                                                  color: Colors.white,size: 18,),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                              child: Center(
                                                child: Icon(Icons.terrain,
                                                  color: Colors.white,size: 18,),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 48,
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2017/07/23/09/25/tulips-2530865_960_720.png"
                                            ),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                )

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
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){


        },
      ),
    );
  }
}























