import 'package:flutter/material.dart';

class RealEstateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HouseListPage(),
    );
  }
}

class HouseListPage extends StatefulWidget {
  @override
  _HouseListPageState createState() => _HouseListPageState();
}

class _HouseListPageState extends State<HouseListPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

