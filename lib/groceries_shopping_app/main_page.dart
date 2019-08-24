import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Food {
  final String imgPath;
  final String price;
  final String title;
  final String subtitle;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              curve: Curves.easeIn,
                padding: EdgeInsets.all(16),
                height: containerHeight,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: _borderRadiusGeometry),
                duration: Duration(milliseconds: 1000),
                child: StaggeredGridView.countBuilder(
                  itemCount: foodItems.length,
                  crossAxisCount: 2,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print("Item Clicked");
                        setState(() {
                          if(!selectedTrigger){
                            containerHeight = MediaQuery.of(context).size.height;
                            _borderRadiusGeometry = BorderRadius.circular(0);
                            selectedTrigger = !selectedTrigger;

                          }else{
                             containerHeight = 657.4545454545455;
                             _borderRadiusGeometry = BorderRadius.only(
                              bottomLeft: Radius.circular(32),
                              bottomRight: Radius.circular(32),
                            );
                             selectedTrigger = !selectedTrigger;
                          }

                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 2,
                                spreadRadius: 1)
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              foodItems[index].imgPath,
                              width: 160,
                              height: 100,
                              alignment: Alignment.center,
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
                    return StaggeredTile.count(1, index.isEven ? 1.6 : 1.4);
                  },
//                  mainAxisSpacing: 8.0,
//                  crossAxisSpacing: 8.0,
                ))
          ],
        ),
      ),
    );
  }
}
