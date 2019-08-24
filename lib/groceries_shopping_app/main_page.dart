import 'package:flutter/material.dart';

class Food{
  final String imgPath;
  final String price;
  final String title;
  final String subtitle;

  Food({this.imgPath, this.price, this.title, this.subtitle});
}

List<Food> foodItems = [
  Food(
    imgPath: "https://purepng.com/public/uploads/large/purepng.com-lays-chips-packpotato-tasty-pack-lays-chips-snack-taste-product-941524636381ybdhu.png",
    price: "\$1.99",
    title: "Lays's Cheddar & Sour Cream",
    subtitle: "500g"
  ),
  Food(
      imgPath: "https://purepng.com/public/uploads/large/purepng.com-lays-potato-chips-packfood-potato-tasty-pack-lays-chips-taste-product-snaks-941524625368gdogh.png",
      price: "\$1.99",
      title: "Lays's Honey Barbecue",
      subtitle: "500g"
  ),
  Food(
      imgPath: "https://purepng.com/public/uploads/large/purepng.com-lays-chips-packpotato-tasty-pack-lays-chips-snack-taste-product-941524636381ybdhu.png",
      price: "\$1.99",
      title: "Lays's Cheddar & Sour Cream",
      subtitle: "500g"
  ),
  Food(
      imgPath: "https://purepng.com/public/uploads/large/purepng.com-lays-potato-chips-packfood-potato-tasty-pack-lays-chips-taste-product-snaks-941524625368gdogh.png",
      price: "\$1.99",
      title: "Lays's Honey Barbecue",
      subtitle: "500g"
  ),
  Food(
      imgPath: "https://purepng.com/public/uploads/large/purepng.com-lays-chips-packpotato-tasty-pack-lays-chips-snack-taste-product-941524636381ybdhu.png",
      price: "\$1.99",
      title: "Lays's Cheddar & Sour Cream",
      subtitle: "500g"
  ),
  Food(
      imgPath: "https://purepng.com/public/uploads/large/purepng.com-lays-potato-chips-packfood-potato-tasty-pack-lays-chips-taste-product-snaks-941524625368gdogh.png",
      price: "\$1.99",
      title: "Lays's Honey Barbecue",
      subtitle: "500g"
  ),
  Food(
      imgPath: "https://purepng.com/public/uploads/large/purepng.com-lays-chips-packpotato-tasty-pack-lays-chips-snack-taste-product-941524636381ybdhu.png",
      price: "\$1.99",
      title: "Lays's Cheddar & Sour Cream",
      subtitle: "500g"
  ),
  Food(
      imgPath: "https://purepng.com/public/uploads/large/purepng.com-lays-potato-chips-packfood-potato-tasty-pack-lays-chips-taste-product-snaks-941524625368gdogh.png",
      price: "\$1.99",
      title: "Lays's Honey Barbecue",
      subtitle: "500g"
  ),
];

class GroceriesShoppingApp extends StatelessWidget {
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
    return Scaffold();
  }
}























