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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              child: Icon(Icons.arrow_back),
            ),
            SizedBox(height: 16,),
            Icon(Icons.local_florist, size: 38,),
            Text("Beginner")
          ],
        ),
      ),

    );
  }
}

















