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
              padding: EdgeInsets.only(top: 32, left: 24, right: 24),
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
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "How Much Should You Take?",
                    style: TextStyle(
                        color: Colors.green[200],
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 9,
//                    decoration: BoxDecoration(color: Colors.blue),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "80",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 42),
                              ),
                              Text(
                                "Vitamin C",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: VerticalDivider(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "16",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 42),
                              ),
                              Text(
                                "Vitamin B3",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: VerticalDivider(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "90",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 42),
                              ),
                              Text(
                                "Vitamin D",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: 32,
            right: 32,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.9,
            left: 16,
            right: 16,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.8,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24))),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        height: 4,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 24, right: 24, top: 4),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300], width: 1),
                          borderRadius: BorderRadius.circular(36)),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                "Minerals",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(36),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.green[100],
                                      blurRadius: 5,
                                      spreadRadius: 3
                                    )
                                  ]
                                ),
                                child: Center(
                                  child: Text(
                                    "Nutrition",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                "Vitamins",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24, right: 24
                      ),
                      child: Row(
                        children: <Widget>[
                          Text("Schudule",style: TextStyle(
                            color: Colors.purple[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                          Spacer(),
                          Text("Today,",style: TextStyle(
                            color: Colors.grey
                          ),),
                          Text("11 Oct",style: TextStyle(
                            color: Colors.purple[900]
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Placeholder(),
                  ),
                  Expanded(
                    flex: 10,
                    child: Placeholder(),
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
