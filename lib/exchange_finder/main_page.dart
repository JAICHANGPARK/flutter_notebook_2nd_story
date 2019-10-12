import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExchangeFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EFMainPage(),
    );
  }
}

class EFMainPage extends StatefulWidget {
  @override
  _EFMainPageState createState() => _EFMainPageState();
}

class _EFMainPageState extends State<EFMainPage> {
  static const double appLeftPadding = 48.0;
  Color topViewColor = Color(0xffA28835);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: appLeftPadding,
            top: 0,
            child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(color: topViewColor),
              padding:
                  EdgeInsets.only(left: 8, top: 24, bottom: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: (){
                      print("back button pressed");
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "100",style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          )),
                          TextSpan(text: ".00 USD",style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          )),
                        ]
                      ),

                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 24,
            top: 16,
            child: IconButton(
              color: Colors.black,
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: 152,
            left: appLeftPadding,
            right: 0,
            height: 64,
            child: Placeholder(),
          ),
          Positioned(
            right: 0,
            bottom: 100,
            left: appLeftPadding,
            top: 262,
            child: Placeholder(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 72,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.9,
              child: Placeholder(),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              child: Placeholder(),
            ),
          )
        ],
      ),
    );
  }
}
