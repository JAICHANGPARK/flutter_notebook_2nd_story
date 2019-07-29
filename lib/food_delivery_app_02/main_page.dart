import 'package:flutter/material.dart';

class Food {
  final String imgPath;
  final String title;
  final String subTitle;
  final double price;

  Food({this.imgPath, this.title, this.subTitle, this.price});
}

List<Food> foodItems = [
  Food(
      imgPath: "",
      title: "Florentina Steak",
      subTitle: "Marghrita of Naples with the thick crust.",
      price: 20.00),
  Food(
      imgPath: "",
      title: "Bottarga",
      subTitle: "Marghrita of Naples with the thick crust.",
      price: 10.00),
  Food(
      imgPath: "",
      title: "Lasagna",
      subTitle: "Marghrita of Naples with the thick crust.",
      price: 15.00),
  Food(
      imgPath: "",
      title: "Risotto Steak",
      subTitle: "Marghrita of Naples with the thick crust.",
      price: 25.00),
  Food(
      imgPath: "",
      title: "Florentina Steak",
      subTitle: "Marghrita of Naples with the thick crust.",
      price: 20.00),
  Food(
      imgPath: "",
      title: "Bottarga",
      subTitle: "Marghrita of Naples with the thick crust.",
      price: 10.00),
];

class FoodDeliveryApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

    );
  }
}


























