import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/perfect_plant_app/detail_page.dart';

class AddPlantPage extends StatefulWidget {
  @override
  _AddPlantPageState createState() => _AddPlantPageState();
}

class _AddPlantPageState extends State<AddPlantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, left: 24, right: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.of(context).pop(true);
                },
              )
            ),
            SizedBox(
              height: 16,
            ),
            Icon(
              Icons.local_florist,
              size: 38,
              color: Colors.teal,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Beginner",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "For beginners that don't know yet how to "
              "properly take care of little plants we "
              "recommend ther following plants",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 14,
                  letterSpacing: 1.4),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Choose one to begin with.",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 14,
                  letterSpacing: 1.4),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailPage(imgIndex: "0",)
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      width: MediaQuery.of(context).size.width - 100,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 24,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.only(left: 16, bottom: 16),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: <Color>[
                                        Colors.teal[100],
                                        Colors.teal[300]
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                 borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Spacer(),
                                  Text("INDOOR",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontSize: 16
                                    ),),
                                  SizedBox(height: 4,),
                                  Text("Cactus",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(1),
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600
                                    ),),
                                  SizedBox(height: 16,),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 48,
                                        width: 48,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                                color: Colors.white
                                            )
                                        ),
                                        child: Center(
                                          child: Icon(Icons.wb_sunny,
                                            color: Colors.white,
                                            size: 24,),
                                        ),
                                      ),
                                      SizedBox(width: 16,),
                                      Container(
                                        height: 48,
                                        width: 48,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                                color: Colors.white
                                            )
                                        ),
                                        child: Center(
                                          child: Icon(Icons.local_drink,
                                            color: Colors.white,size: 24,),
                                        ),
                                      ),
                                      SizedBox(width: 16,),
                                      Container(
                                        height: 48,
                                        width: 48,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                                color: Colors.white
                                            )
                                        ),
                                        child: Center(
                                          child: Icon(Icons.terrain,
                                            color: Colors.white,size: 24,),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                          ),
                          Positioned(
                            top: -16,
                            left: 0,
                            right: 0,
                            child: Hero(
                              tag: "0",
                              child: Container(
                                height: 340,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2016/11/24/19/49/vase-1857081_960_720.png"),
                                        fit: BoxFit.fitHeight)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 24,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 16, bottom: 16),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: <Color>[
                                      Colors.teal[100],
                                      Colors.teal[300]
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Spacer(),
                                Text("INDOOR",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 16
                                  ),),
                                SizedBox(height: 4,),
                                Text("Cactus",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(1),
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600
                                  ),),
                                SizedBox(height: 16,),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                              color: Colors.white
                                          )
                                      ),
                                      child: Center(
                                        child: Icon(Icons.wb_sunny,
                                          color: Colors.white,
                                          size: 24,),
                                      ),
                                    ),
                                    SizedBox(width: 16,),
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                              color: Colors.white
                                          )
                                      ),
                                      child: Center(
                                        child: Icon(Icons.local_drink,
                                          color: Colors.white,size: 24,),
                                      ),
                                    ),
                                    SizedBox(width: 16,),
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                              color: Colors.white
                                          )
                                      ),
                                      child: Center(
                                        child: Icon(Icons.terrain,
                                          color: Colors.white,size: 24,),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                        ),
                        Positioned(
                          top: -16,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 340,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(

                                            "https://cdn.pixabay.com/photo/2017/07/23/09/25/tulips-2530865_960_720.png"
                                    ),
                                    fit: BoxFit.fitHeight
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
