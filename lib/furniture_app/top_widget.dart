import 'package:flutter/material.dart';

class TopCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 240,
      margin: EdgeInsets.only(right: 18),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.45,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 10),
                  image: DecorationImage(image: NetworkImage(""
                      "https://cdn.pixabay.com/photo/2016/11/21/12/59/chair-1845270_960_720.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 72,
            child: Container(
              height: 140,
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.only(left: 16, top: 16, right: 16,
                  bottom: 32),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2,
                        spreadRadius: 1
                    )
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Tag stool'.toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  Text('design by dreamwalker',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10
                    ),),
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
            ),
          ),
          Positioned(
            bottom: 20,
            right: 48,
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: Color(0xffd78b2e),
              ),
              child: Center(
                child: Icon(Icons.arrow_forward,
                  color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
