import 'package:flutter/material.dart';

class ProjectManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilePage(),
    );
  }
}

class FilePage extends StatefulWidget {
  @override
  _FilePageState createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
