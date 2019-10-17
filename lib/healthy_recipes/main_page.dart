import 'package:flutter/material.dart';

class HealthyRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipesPage(),
    );
  }
}

class RecipesPage extends StatefulWidget {
  @override
  _StateRecipesPage createState() => _StateRecipesPage();
}

class _StateRecipesPage extends State<RecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 24,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                children: <Widget>[
                  Text(
                    "Vitamins & Minerals",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
