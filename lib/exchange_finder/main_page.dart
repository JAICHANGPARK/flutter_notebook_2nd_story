import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/exchange_finder/app_styles.dart';
import 'package:flutter_notebook_second_story/exchange_finder/models/curreny.dart';
import 'package:flutter_notebook_second_story/exchange_finder/ui/item_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  Color topViewColor = Color(0xffA28835);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: ApplicationPadding.appLeftPadding,
            top: 0,
            child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(color: topViewColor),
              padding: EdgeInsets.only(left: 8, top: 24, bottom: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      print("back button pressed");
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "100",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: ".00 USD",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ]),
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
            left:  ApplicationPadding.appLeftPadding,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Current location",
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_searching,
                      color: topViewColor,
                      size: 16,
                    ),
                    Text(
                      "Prague, Czech Republic",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 100,
            left:  ApplicationPadding.appLeftPadding,
            top: 230,
            child: Container(
              color: Colors.red[200],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 84,
            child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height / 1.7,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemView(v: priceItems[index],);
                  },
                  itemCount: priceItems.length,
                )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 140,
              width: 120,
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
