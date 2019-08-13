import 'package:flutter/material.dart';

class BookstoreConcept extends StatelessWidget {
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
  bool uiSwitcher = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            //TODO Implement Appbar
            Container(
              height: 48,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/02/14/07/28/painting-3995999__340.jpg"),
                      fit: BoxFit.cover)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search or scan",
                            icon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //TODO Implement Flexible Top UI

            AnimatedContainer(
              height: uiSwitcher ? height / 10 : height / 3,
              duration: Duration(milliseconds: 500),
              child: uiSwitcher
                  ? Container(
                      height: height / 10,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 16, top: 4, right: 16),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2019/02/14/07/28/painting-3995999__340.jpg"),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Material(
                            color: Colors.transparent,
                            child: Hero(
                              tag: 'title_01',
                              child: SizedBox(
                                width: 180,
                                child: Text(
                                  "MYSTERIES & THRILLERS",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Hero(
                              tag: "slider_01",
                              child: Container(
                                height: 24,
                                width: MediaQuery.of(context).size.width / 4,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(
                      height: height / 3,
                      padding: EdgeInsets.only(left: 16),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2019/02/14/07/28/painting-3995999__340.jpg"),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            "New 93 books",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Material(
                            color: Colors.transparent,
                            child: Hero(
                              tag: 'title_01',
                              child: SizedBox(
                                width: 180,
                                child: Text(
                                  "MYSTERIES & THRILLERS",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Hero(
                              tag: "slider_01",
                              child: Container(
                                height: 24,
                                width: MediaQuery.of(context).size.width / 4,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
            ),
            AnimatedContainer(
              height: uiSwitcher ? height / 1.43 : height / 10,
              duration: Duration(milliseconds: 500),
              child: uiSwitcher
                  ? Container(
                      height: height / 1.40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(48),
                            topRight: Radius.circular(48),
                          )),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Popular",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text("See all"),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 430,
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 110,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            margin: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                image: DecorationImage(image:
                                                NetworkImage("https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302__340.jpg"),
                                                fit: BoxFit.cover),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 16,
                                                left: 8,
                                                right: 8,
                                                bottom: 16),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Spirit of love",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text("William Maugham"),
                                                Spacer(),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text("9.3")
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 16,
                                            bottom: 16),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text("\$ 8.99", style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                                
                                                Container(
                                                  height: 36,
                                                  width: 36,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      CircularProgressIndicator(
                                                        strokeWidth: 2,
                                                      ),
                                                      Container(
                                                        height: 36,
                                                        width: 36,
                                                        decoration: BoxDecoration(
                                                          color: Colors.blueGrey.withOpacity(0.2),
                                                          shape: BoxShape.circle,
                                                        ),
                                                        child: Center(
                                                          child: Icon(Icons.play_arrow),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, idx) {
                                  return Divider(
                                    height: 16,
                                    color: Colors.black,
                                  );
                                },
                                itemCount: 5),
                          )
                        ],
                      ),
                    )
                  : Container(
                      height: height / 10,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.4),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(48))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Popular",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  uiSwitcher = !uiSwitcher;
                                });
                              },
                              child: Text("Open section")),
                        ],
                      ),
                    ),
            ),
            AnimatedContainer(
                height: uiSwitcher ? height / 11 : height / 2.19,
                duration: Duration(milliseconds: 500),
                child: uiSwitcher
                    ? Container(
                        height: height / 11,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(38),
                              topRight: Radius.circular(38),
                            )),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Bookshelf"),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    uiSwitcher = !uiSwitcher;
                                  });
                                },
                                child: Text("Open section")),
                          ],
                        ),
                      )
                    : Container(
                        height: height / 2.19,
                        child: AnimatedContainer(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(48),
                              )),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Bookshelf",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("See all"),
                                ],
                              ),
                              Container(
                                height: 290,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.only(
                                        right: 16,
                                        top: 16,
                                      ),
                                      width: 148,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 14,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(image:
                                                NetworkImage("https://cdn.pixabay.com/photo/2019/08/11/14/08/pink-lady-edwardian-era-4399066__340.jpg"),
                                                fit: BoxFit.cover),
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                color: Colors.blueAccent,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: LinearProgressIndicator(
                                                backgroundColor: Colors.grey,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Bridget Jones's,,,",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text("Oscar Fingal")
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                  itemCount: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
//          Expanded(
//            flex: uiSwitcher ? 1 : 4,
//            child: AnimatedContainer(
//              duration: Duration(seconds: 1),
//              child: Placeholder(),
//            ),
//          )
          ],
        ),
      ),
    );
  }
}
