import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDeliveryApp03 extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 64,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.only(left: 16, right: 8),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4)),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: "Search",
                              helperStyle:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Top categories",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "show all",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/taco_1f32e.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Mexican",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/slice-of-pizza_1f355.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Pizza",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/cooked-rice_1f35a.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Asian",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/hamburger_1f354.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Burgers",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/burrito_1f32f.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Burrito",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/taco_1f32e.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Mexican",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/slice-of-pizza_1f355.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Pizza",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/cooked-rice_1f35a.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Asian",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/hamburger_1f354.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Burgers",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200]),
                                  child: Center(
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/burrito_1f32f.png",
                                      width: 32,
                                      height: 38,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Burrito",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 8),
              child: Text(
                "Recommended for you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 460,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 130,
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: <Widget>[],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class Shop {
  String imgPath;
  String title;
  String food;
  String price;
  int reviewCount;

  Shop({this.imgPath, this.title, this.food, this.price, this.reviewCount});
}

List<Shop> shops = [
  Shop(
      imgPath:
          "https://cdn.pixabay.com/photo/2017/09/30/15/10/pizza-2802332__340.jpg",
      title: "The Kitchen",
      food: "Pizza, burgers, fries",
      price: "min, order \$10.00",
      reviewCount: 122)
];


















