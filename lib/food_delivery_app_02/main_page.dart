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
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Container(
              height: 340,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/12/08/00/32/steak-1081819_960_720.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.darken))),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 120,
                    left: 24,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Bona Italian",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              letterSpacing: 1.5),
                        ),
                        Text(
                          "Tasty spicy",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 26,
                              letterSpacing: 1.2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 240,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(64))),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, top: 32, right: 16),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.search,
                            size: 14,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.withOpacity(0.6),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.tune),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28, right: 16),
                    height: 340,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: foodItems.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 110,
                            margin: EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 84,
                                  width: 84,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          bottomLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 18, left: 16),
                                  child: Container(
                                    width: 130,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          foodItems[index].title,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          foodItems[index].subTitle,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.blueGrey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.indigo,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "${foodItems[index].price.toString()} USD",
                                        style: TextStyle(
                                            color: Colors.deepOrangeAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 52,
                    margin: EdgeInsets.only(left: 32, right: 32),
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16))),
                    child: Center(
                      child: Text(
                        "Check List",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
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
