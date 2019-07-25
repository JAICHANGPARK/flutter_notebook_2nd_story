import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Hero(
              tag: "l1",
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image:
                  NetworkImage("https://cdn.pixabay.com/photo/2016/04/22/16/17/daisy-1346049_960_720.jpg"),
                  fit: BoxFit.cover)
                ),
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: Container(
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 24,
                      left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Royal Haze",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold
                          ),),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0,
                          left: 16, right: 16),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.grey,),
                          Icon(Icons.star,color: Colors.grey,),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 16,
                          left: 16, right: 16),
                      child: Text("Personalized strain based on the gamous blueberry. Energetic sativa with a"
                          "fresh taste and low strength.",
                      style: TextStyle(
                        letterSpacing: 1.5
                      ),)
                    ),

                    Padding(
                        padding: const EdgeInsets.only(top: 16,
                            left: 16, right: 16),
                        child: Container(
                          height: 32,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                          ),
                          child: Text("LOW STOCK",
                            style: TextStyle(
                                letterSpacing: 1.5,
                              fontSize: 12,
                              color: Colors.grey
                            ),),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24,
                          left: 16, right: 16, bottom: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                         Text("\$42", style: TextStyle(
                           fontSize:22
                         ),),
                          Container(
                            height: 48,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(32)
                            ),
                            child: Center(
                              child: Text("Add to Cart",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )

          ],
        ),
    );
  }
}
























