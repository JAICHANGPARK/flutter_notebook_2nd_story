import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Food {
  String imgPath;
  String price;
  String title;
  String subtitle;

  Food({this.imgPath, this.price, this.title, this.subtitle});
}

List<Food> foodItems = [
  Food(
      imgPath:
          "https://purepng.com/public/uploads/large/purepng.com-lays-chips-packpotato-tasty-pack-lays-chips-snack-taste-product-941524636381ybdhu.png",
      price: "\$1.99",
      title: "Lays's Cheddar & Sour Cream",
      subtitle: "500g"),
  Food(
      imgPath:
          "https://purepng.com/public/uploads/large/purepng.com-lays-potato-chips-packfood-potato-tasty-pack-lays-chips-taste-product-snaks-941524625368gdogh.png",
      price: "\$1.99",
      title: "Lays's Honey Barbecue",
      subtitle: "500g"),
  Food(
      imgPath:
          "https://purepng.com/public/uploads/large/purepng.com-lays-chips-packpotato-tasty-pack-lays-chips-snack-taste-product-941524636381ybdhu.png",
      price: "\$1.99",
      title: "Lays's Cheddar & Sour Cream",
      subtitle: "500g"),
  Food(
      imgPath:
          "https://purepng.com/public/uploads/large/purepng.com-lays-potato-chips-packfood-potato-tasty-pack-lays-chips-taste-product-snaks-941524625368gdogh.png",
      price: "\$1.99",
      title: "Lays's Honey Barbecue",
      subtitle: "500g"),
  Food(
      imgPath:
          "https://purepng.com/public/uploads/large/purepng.com-lays-chips-packpotato-tasty-pack-lays-chips-snack-taste-product-941524636381ybdhu.png",
      price: "\$1.99",
      title: "Lays's Cheddar & Sour Cream",
      subtitle: "500g"),
  Food(
      imgPath:
          "https://purepng.com/public/uploads/large/purepng.com-lays-potato-chips-packfood-potato-tasty-pack-lays-chips-taste-product-snaks-941524625368gdogh.png",
      price: "\$1.99",
      title: "Lays's Honey Barbecue",
      subtitle: "500g"),
  Food(
      imgPath:
          "https://purepng.com/public/uploads/large/purepng.com-lays-chips-packpotato-tasty-pack-lays-chips-snack-taste-product-941524636381ybdhu.png",
      price: "\$1.99",
      title: "Lays's Cheddar & Sour Cream",
      subtitle: "500g"),
  Food(
      imgPath:
          "https://purepng.com/public/uploads/large/purepng.com-lays-potato-chips-packfood-potato-tasty-pack-lays-chips-taste-product-snaks-941524625368gdogh.png",
      price: "\$1.99",
      title: "Lays's Honey Barbecue",
      subtitle: "500g"),
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

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  double containerHeight = 657.4545454545455;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.only(
    bottomLeft: Radius.circular(32),
    bottomRight: Radius.circular(32),
  );
  bool selectedTrigger = false;
  bool bottomViewTrigger = false;
  Food selectedFood = Food();
  int selectedCounter = 1;
  List<Food> userFoodCart = List();
  double sumPrice = 0;

  @override
  Widget build(BuildContext context) {
    userFoodCart.forEach((f){
      sumPrice += double.parse(f.price.substring(1));
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              curve: Curves.easeIn,
              padding: EdgeInsets.all(16),
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: _borderRadiusGeometry),
              duration: Duration(milliseconds: 500),
              child: selectedTrigger
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              icon: Icon(Icons.chevron_left),
                              onPressed: () {
                                setState(() {
                                  containerHeight = 657.4545454545455;
                                  _borderRadiusGeometry = BorderRadius.only(
                                    bottomLeft: Radius.circular(32),
                                    bottomRight: Radius.circular(32),
                                  );
                                  selectedTrigger = !selectedTrigger;
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Hero(
                            tag: "food",
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(selectedFood.imgPath))),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 16, left: 16, right: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  selectedFood.title,
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  selectedFood.subtitle,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 38,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(color: Colors.grey)),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (selectedCounter < 2) {
                                                print("under 1 blocking");
                                              } else {
                                                selectedCounter--;
                                              }
                                            });
                                          },
                                          child: Center(
                                            child: Icon(Icons.remove),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Center(
                                              child: Text(
                                            selectedCounter.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              selectedCounter++;
                                            });
                                          },
                                          child: Center(
                                            child: Icon(Icons.add),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  selectedFood.price,
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "About the product",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              SingleChildScrollView(
                                child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.white.withOpacity(0.8)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.center,
                                          stops: [0.0, 0.5])),
                                  child: Text(
                                      "Lay's is the name of a brand for a number of potato chip varieties, as well as the name of "
                                      "the company that founded the chip brand in the U.S."
                                      " It has also been called Frito-Lay with Fritos. Lay's "
                                      "has been owned by PepsiCo through Frito-Lay since 1965."),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.favorite_border),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      userFoodCart.add(selectedFood);
                                      containerHeight = 657.4545454545455;
                                      _borderRadiusGeometry = BorderRadius.only(
                                        bottomLeft: Radius.circular(32),
                                        bottomRight: Radius.circular(32),
                                      );
                                      selectedTrigger = !selectedTrigger;
                                    });
                                  },
                                  child: Container(
                                    height: 64,
                                    width: 240,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(36)),
                                    child: Center(
                                      child: Text(
                                        "Add to cart",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 64,
                            child: AppBar(
                              backgroundColor: Colors.white,
                              title: Text(
                                "Photato Chips",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              elevation: 0,
                              iconTheme: IconThemeData(color: Colors.black),
                              leading: Icon(
                                Icons.arrow_back_ios,
                                size: 16,
                              ),
                              actions: <Widget>[Icon(Icons.tune)],
                            ),
                          ),
                          Container(
                            height: containerHeight - 100,
                            child: StaggeredGridView.countBuilder(
                              itemCount: foodItems.length,
                              crossAxisCount: 2,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    print("Item Clicked");
                                    setState(() {
                                      if (!selectedTrigger) {
                                        containerHeight =
                                            MediaQuery.of(context).size.height;
                                        _borderRadiusGeometry =
                                            BorderRadius.circular(0);
                                        selectedTrigger = !selectedTrigger;
                                        selectedFood.imgPath =
                                            foodItems[index].imgPath;
                                        selectedFood.title =
                                            foodItems[index].title;
                                        selectedFood.subtitle =
                                            foodItems[index].subtitle;
                                        selectedFood.price =
                                            foodItems[index].price;
                                      } else {
                                        containerHeight = 657.4545454545455;
                                        _borderRadiusGeometry =
                                            BorderRadius.only(
                                          bottomLeft: Radius.circular(32),
                                          bottomRight: Radius.circular(32),
                                        );
                                        selectedTrigger = !selectedTrigger;
                                      }
                                    });
                                  },
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.15),
                                            blurRadius: 2,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Hero(
                                          tag: "food",
                                          child: Image.network(
                                            foodItems[index].imgPath,
                                            width: 160,
                                            height: 100,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          foodItems[index].price,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          foodItems[index].title,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          foodItems[index].subtitle,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              staggeredTileBuilder: (index) {
                                return StaggeredTile.count(
                                    1, index.isEven ? 1.6 : 1.4);
                              },
//                  mainAxisSpacing: 8.0,
//                  crossAxisSpacing: 8.0,
                            ),
                          )
                        ],
                      ),
                    ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  bottomViewTrigger = !bottomViewTrigger;
                });
              },
              child: !bottomViewTrigger
                  ? Container(
                      height: 80,
                      padding: EdgeInsets.only(left: 16, right: 16),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: ListView.builder(
                              itemCount: userFoodCart.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 54,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              userFoodCart[index].imgPath),
                                          fit: BoxFit.fitHeight)),
                                );
                              },
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 64,
                                width: 64,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    userFoodCart.length.toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height - 120,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Cart",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemCount: userFoodCart.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    height: 80,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          height: 38,
                                          width: 38,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      userFoodCart[index]
                                                          .imgPath))),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "1",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "x",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            userFoodCart[index].title,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          userFoodCart[index].price,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.5)),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              padding:
                                  EdgeInsets.only(left: 16, right: 16, top: 16),
                              child: Row(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 36,
                                      width: 36,
                                      child: Icon(
                                        Icons.directions_car,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Delivery",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        width: 160,
                                        child: Text(
                                          "All order of \$40 or more quality for FREE delivery",
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.5)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                        height: 4,
                                        width: 160,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.23)),
                                        child: Container(
                                          height: 4,
                                          width: 100,
                                          margin: EdgeInsets.only(right: 60),
                                          decoration: BoxDecoration(
                                              color: Colors.yellow),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Total", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24
                                      ),),
                                      Text("\$ ${sumPrice.toStringAsFixed(2)}", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 38
                                      ),),
                                    ],
                                  ),
                                  Container(
                                    height: 48,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Center(child: Text("Next",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}












