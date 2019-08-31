import 'package:flutter/material.dart';

import 'package:flutter_particles/particles.dart';

class ParticleApps extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.orange[50],
            child: Particles(
              30,
              Colors.blue
            )
          ),
          Container(
              child: Particles(
                  30,
                  Colors.red
              )
          ),
          Container(
              child: Particles(
                  30,
                  Colors.green
              )
          )
        ],
      ),
    );
  }
}

