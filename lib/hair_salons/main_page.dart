import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/hair_salons/map_page.dart';

class HairSalonsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class Shop {
  String name;
  String imgPath;
  double rate;

  Shop(this.name, this.imgPath, this.rate);
}

List<Shop> items = [
  Shop(
      "Danic Schaefer Hairstylist",
      "https://cdn.pixabay.com/photo/2015/10/26/20/46/haircut-1007891__340.jpg",
      4.1),
  Shop(
      "Royalty Barbershop",
      "https://cdn.pixabay.com/photo/2015/10/26/20/46/haircut-1007891__340.jpg",
      4.4),
  Shop(
      "Danic Schaefer Hairstylist",
      "https://cdn.pixabay.com/photo/2015/10/26/20/46/haircut-1007891__340.jpg",
      4.2),
  Shop(
      "Royalty Barbershop",
      "https://cdn.pixabay.com/photo/2015/10/26/20/46/haircut-1007891__340.jpg",
      3.8),
];

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
            SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 12, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Hair Salons",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.teal,
                  ),
                  InkWell(
                    onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return MapPage();
                        }));
                    },
                    child: Text(
                      "ASAP -- Prince George's Park",
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 240,
              padding: EdgeInsets.only(left: 16),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 180,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage(items[index].imgPath),
                            fit: BoxFit.cover),
                      ),
                      padding: EdgeInsets.only(
                          left: 8, right: 8, top: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 42,
                            width: 84,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.star_border,
                                  color: Colors.white,
                                ),
                                Text(
                                  items[index].rate.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 180,
                            child: Text(
                              items[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16, bottom: 8),
              child: Text("Recent",style: TextStyle(
                color: Colors.grey
              ),),
            ),
            Container(
              height: 360,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                return Container(
                  height: 280,
                  margin: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  child: Placeholder(),
                );
              },
              itemCount: 3,),
            )

          ],
        ),
      ),
    );
  }
}




































