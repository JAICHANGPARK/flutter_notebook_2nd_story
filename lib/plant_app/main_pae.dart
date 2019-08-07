import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class PlantsApp extends StatelessWidget {
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
      backgroundColor: Color(0xfff0f3f5),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.whatshot,
              ),
              Icon(
                Icons.inbox,
              ),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Center(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
              Icon(
                Icons.search,
              ),
              Icon(
                Icons.favorite_border,
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 16,
            left: 24,
            right: 24,
            child: Container(
              height: 116,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Added Friends",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "5 total",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Spacer(),
                  Container(
                    height: 60,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          top: 4,
                          left: 0,
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 3),
                              image: DecorationImage(
                                  image: NetworkImage(dreamwalkerImg)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 4,
                          left: 32,
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3),
                                image: DecorationImage(
                                    image: NetworkImage(dreamwalkerImg))),
                          ),
                        ),
                        Positioned(
                          top: 4,
                          left: 64,
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 3),
                              image: DecorationImage(
                                  image: NetworkImage(dreamwalkerImg)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 18,
                          left: 118,
                          child: Container(
                            child: Text("+2 More",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 4,
                          child: Row(
                            children: <Widget>[
                              Text('Add New',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),),
                              SizedBox(width: 8,),
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(16)

                                ),
                                child: Center(
                                  child: Icon(Icons.add,
                                  color: Colors.green,),
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 520,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 256,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Today's Share",
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Container(
                      height: 200,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2012/09/08/21/51/anemone-56414_960_720.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2015/03/04/12/59/bells-flower-658751__340.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2018/08/10/21/53/dandelion-3597681_960_720.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 240,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, top: 16, right: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "New Plants",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        IconButton(
                          icon: Icon(Icons.apps),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 120,
                      padding: EdgeInsets.only(left: 24),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 100,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2011/03/16/16/13/almond-blossom-5378_960_720.jpg"),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.2),
                                          BlendMode.darken))),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 16,
                                    top: 16,
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.green,
                                      size: 16,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 16,
                                    right: 0,
                                    child: Container(
                                      height: 24,
                                      width: 60,
                                      decoration:
                                          BoxDecoration(color: Colors.green),
                                      child: Center(
                                        child: Text(
                                          'Sakura',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
