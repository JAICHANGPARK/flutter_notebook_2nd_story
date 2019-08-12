import 'package:flutter/material.dart';


class BookstoreConcept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool uiSwitcher = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 32,),
          //TODO Implement Appbar
          Container(
            height: 48,
            width: MediaQuery.of(context).size.width,
              child: Placeholder(),
          ),
          //TODO Implement Flexible Top UI
          Expanded(
            flex: uiSwitcher ? 1 : 4,
            child: Placeholder(),
          ),
          Expanded(
            flex: uiSwitcher ? 6: 1,
            child: Placeholder(),
          ),
          Expanded(
            flex: uiSwitcher ? 1: 4,
            child: Placeholder(),
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              uiSwitcher = !uiSwitcher;
            });

      }),
    );
  }
}

































