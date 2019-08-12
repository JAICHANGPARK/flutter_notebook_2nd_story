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
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          //TODO Implement Appbar
          Container(
            height: 48,
            width: MediaQuery.of(context).size.width,
            child: Placeholder(),
          ),
          //TODO Implement Flexible Top UI

          AnimatedContainer(
            height: uiSwitcher ? height / 10 : height / 3,
            duration: Duration(milliseconds: 700),
            child: uiSwitcher
                ? Container(
                    height: height / 10,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 16, top: 4, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                          child: Hero(
                            tag: 'title_01',
                            child: SizedBox(
                              width: 180,
                              child: Text(
                                "MYSTERIES & THRILLERS",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
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
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                  Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
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
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                  Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                        ),
                        Text("New 93 books"),
                        SizedBox(
                          height: 16,
                        ),
                        Material(
                          child: Hero(
                            tag: 'title_01',
                            child: SizedBox(
                              width: 180,
                              child: Text(
                                "MYSTERIES & THRILLERS",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
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
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                  Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
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
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                  Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
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
            duration: Duration(milliseconds: 700),
            child: uiSwitcher
                ? Container(
                    height: height / 1.43,
              width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(48),
                          topRight: Radius.circular(48),
                        )),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
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
                        SizedBox(height: 16,),
                        Container(
                          height: 420,
                          child: ListView.separated(itemBuilder: (context, index){
                            return Container(
                              height: 140,
                              child: Placeholder(),
                            );
                          },
                              separatorBuilder: (context, idx){
                            return Divider(
                              height: 16,
                              color: Colors.black,
                            );
                              }, itemCount: 5),
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
              duration: Duration(milliseconds: 700),
              child: uiSwitcher
                  ? Container(
                      height: height / 11,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(38),
                          topRight:Radius.circular(38),
                        )
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Bookshelf"),
                          InkWell(
                              onTap: (){
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
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(48),
                            )),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Bookshelf", style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),),
                                Text("See all"),
                              ],
                            )
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
    );
  }
}
