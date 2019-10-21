import 'package:flutter/material.dart';

class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FashionHomePage(),
    );
  }
}

class FashionHomePage extends StatefulWidget {
  @override
  _FashionHomePageState createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    iconSize: 38,
                    onPressed: (){},
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                      iconSize: 38,
                    onPressed: (){},
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 6,
              child: Placeholder(),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
























