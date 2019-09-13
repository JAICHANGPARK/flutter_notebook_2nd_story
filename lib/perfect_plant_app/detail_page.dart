import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String imgIndex;
  DetailPage({this.imgIndex});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Hero(
              tag: widget.imgIndex,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/11/24/19/49/vase-1857081_960_720.png"),
                        fit: BoxFit.fitHeight)),
              ),
            ),
          ),
          Positioned(
              left: 16,
              top: 36,
              child: IconButton(
                icon: Icon(Icons.arrow_back,),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              )
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 2 - 80,
            child: Container(
              margin: EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4,
                    spreadRadius: 1
                  )
                ]
              ),
            ),
          ),
          Positioned()
        ],
      ),
    );
  }
}

















