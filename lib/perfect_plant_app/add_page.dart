import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            const EdgeInsets.only(top: 16, left: 24, right: 16, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              child: Icon(Icons.arrow_back),
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
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: <Color>[
                                      Colors.teal[100],
                                      Colors.teal[300]
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Positioned(
                          top: -16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 340,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/07/23/09/25/tulips-2530865_960_720.png"),
                                    fit: BoxFit.fitHeight)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(color: Colors.red),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
