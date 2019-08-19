import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class TravelerApp extends StatelessWidget {
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

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //TODO Implementation App Bar
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Traveler",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Spacer(),
                      Icon(Icons.search),
                      SizedBox(
                        width: 16,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(dreamwalkerImg),
                      )
                    ],
                  ),
                  Text(
                    "Finding your travel experience",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          //TODO Implementation Popular
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Polular",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          "see more",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 270,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          width: 154,
                          margin: EdgeInsets.only(right: 16, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2019/05/31/14/22/sea-4242303__340.jpg"),
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.2),
                                      BlendMode.darken),
                                  fit: BoxFit.cover)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 38,
                                      width: 38,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image:
                                                  NetworkImage(dreamwalkerImg),
                                              fit: BoxFit.cover)),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Millford Sound,\nNew Zealand",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Aug 13, 2019",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6)),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ),
          ),
          //TODO Tabbar
          Expanded(
            flex: 1,
            child: TabBar(

                controller: _tabController,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.zero,
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    text: "Recommended",
                  ),
                  Tab(
                    text: "New",
                  ),
                  Tab(
                    text: "Raing",
                  ),
                  Tab(
                    text: "Favourite",
                  ),
                ]),
          ),
          //TODO Tabbar View
          Expanded(
            flex: 3,
            child: TabBarView(controller: _tabController, children: [
              Container(
                height: 240,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.black,
                                image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/10/12/46/sheep-4396840__340.jpg"),
                                fit: BoxFit.cover)
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 8,
                                    top: 16,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                        SizedBox(width: 8,),
                                        Text('4.2', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 8,
                                    right: 24,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Rang Yai island,"
                                            "Ko Kaeo, Thailand",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                        ),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.black,
                                image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/14/13/46/condor-4405821__340.jpg"),
                                fit: BoxFit.cover)
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 8,
                                    top: 16,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                        SizedBox(width: 8,),
                                        Text('4.2', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 8,
                                    right: 24,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Rang Yai island,"
                                            "Ko Kaeo, Thailand",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                        ),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 2, right: 16, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.black,
                          image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/14/10/37/greece-4405371__340.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2),
                          BlendMode.darken))
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 8,
                              top: 16,
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                                  SizedBox(width: 8,),
                                  Text('4.2', style: TextStyle(
                                    color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            right: 24,
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Rang Yai island,"
                                    "Ko Kaeo, Thailand",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                                ),),
                                SizedBox(height: 8,),
                                Text("July 24, 2019", style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)
                                ),)
                              ],
                            ),
                          )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 240,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.black,
                                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/10/12/46/sheep-4396840__340.jpg"),
                                      fit: BoxFit.cover)
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 8,
                                    top: 16,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                        SizedBox(width: 8,),
                                        Text('4.2', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 8,
                                    right: 24,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Rang Yai island,"
                                            "Ko Kaeo, Thailand",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                        ),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.black,
                                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/14/13/46/condor-4405821__340.jpg"),
                                      fit: BoxFit.cover)
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 8,
                                    top: 16,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                        SizedBox(width: 8,),
                                        Text('4.2', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 8,
                                    right: 24,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Rang Yai island,"
                                            "Ko Kaeo, Thailand",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                        ),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 2, right: 16, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.black,
                            image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/14/10/37/greece-4405371__340.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2),
                                    BlendMode.darken))
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 8,
                              top: 16,
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                                  SizedBox(width: 8,),
                                  Text('4.2', style: TextStyle(
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              left: 8,
                              right: 24,
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Rang Yai island,"
                                      "Ko Kaeo, Thailand",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                  ),),
                                  SizedBox(height: 8,),
                                  Text("July 24, 2019", style: TextStyle(
                                      color: Colors.white.withOpacity(0.4)
                                  ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 240,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.black,
                                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/10/12/46/sheep-4396840__340.jpg"),
                                      fit: BoxFit.cover)
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 8,
                                    top: 16,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                        SizedBox(width: 8,),
                                        Text('4.2', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 8,
                                    right: 24,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Rang Yai island,"
                                            "Ko Kaeo, Thailand",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                        ),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.black,
                                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/14/13/46/condor-4405821__340.jpg"),
                                      fit: BoxFit.cover)
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 8,
                                    top: 16,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                        SizedBox(width: 8,),
                                        Text('4.2', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 8,
                                    right: 24,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Rang Yai island,"
                                            "Ko Kaeo, Thailand",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                        ),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 2, right: 16, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.black,
                            image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/14/10/37/greece-4405371__340.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2),
                                    BlendMode.darken))
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 8,
                              top: 16,
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                                  SizedBox(width: 8,),
                                  Text('4.2', style: TextStyle(
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              left: 8,
                              right: 24,
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Rang Yai island,"
                                      "Ko Kaeo, Thailand",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                  ),),
                                  SizedBox(height: 8,),
                                  Text("July 24, 2019", style: TextStyle(
                                      color: Colors.white.withOpacity(0.4)
                                  ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 240,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.black,
                                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/10/12/46/sheep-4396840__340.jpg"),
                                      fit: BoxFit.cover)
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 8,
                                    top: 16,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                        SizedBox(width: 8,),
                                        Text('4.2', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 8,
                                    right: 24,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Rang Yai island,"
                                            "Ko Kaeo, Thailand",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                        ),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.black,
                                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/14/13/46/condor-4405821__340.jpg"),
                                      fit: BoxFit.cover)
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 8,
                                    top: 16,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                        SizedBox(width: 8,),
                                        Text('4.2', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 8,
                                    right: 24,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Rang Yai island,"
                                            "Ko Kaeo, Thailand",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                        ),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 2, right: 16, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.black,
                            image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/14/10/37/greece-4405371__340.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2),
                                    BlendMode.darken))
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 8,
                              top: 16,
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                                  SizedBox(width: 8,),
                                  Text('4.2', style: TextStyle(
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              left: 8,
                              right: 24,
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Rang Yai island,"
                                      "Ko Kaeo, Thailand",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                  ),),
                                  SizedBox(height: 8,),
                                  Text("July 24, 2019", style: TextStyle(
                                      color: Colors.white.withOpacity(0.4)
                                  ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}












