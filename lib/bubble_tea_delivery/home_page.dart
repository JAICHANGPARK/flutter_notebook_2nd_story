import 'package:flutter/material.dart';

class BubbleTeaDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool clicked = false;
  double sValue = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 16,
            top: 32,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "DreamWalker Shop",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text("Roppongi, Tokyo"),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[Text("20"), Text('mins')],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          clicked = !clicked;
                        });
                      },
                      child: Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.blueGrey, width: 5)),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "NEW DRINKS",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Positioned(
            left: 16,
            top: 140,
            right: 0,
            child: Container(
              height: 280,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 200,
                    margin:
                        EdgeInsets.only(right: 16, bottom: 4, left: 4, top: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(48)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                          )
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: -38,
                          top: -60,
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Text(
                            "\$5.90",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Bubble_Tea.png/200px-Bubble_Tea.png"))),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 180,
                          child: Container(
                            height: 20,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text(
                                "NEW!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 210,
                          bottom: 0,
                          child: Container(
                            color: Colors.white70,
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Chewy tea".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text("Taro Bubble \nMilk Tea"),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 16,
                            right: 16,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    margin:
                        EdgeInsets.only(right: 16, bottom: 4, left: 4, top: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(48)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                          )
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: -38,
                          top: -60,
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Text(
                            "\$5.90",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Bubble_Tea.png/200px-Bubble_Tea.png"))),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 180,
                          child: Container(
                            height: 20,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text(
                                "NEW!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 210,
                          bottom: 0,
                          child: Container(
                            color: Colors.white70,
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Chewy tea".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text("Taro Bubble \nMilk Tea"),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 16,
                            right: 16,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    margin:
                        EdgeInsets.only(right: 16, bottom: 4, left: 4, top: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(48)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                          )
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: -38,
                          top: -60,
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Text(
                            "\$5.90",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Bubble_Tea.png/200px-Bubble_Tea.png"))),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 180,
                          child: Container(
                            height: 20,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text(
                                "NEW!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 210,
                          bottom: 0,
                          child: Container(
                            color: Colors.white70,
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Chewy tea".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text("Taro Bubble \nMilk Tea"),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 16,
                            right: 16,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    margin:
                        EdgeInsets.only(right: 16, bottom: 4, left: 4, top: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(48)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                          )
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: -38,
                          top: -60,
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Text(
                            "\$5.90",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Bubble_Tea.png/200px-Bubble_Tea.png"))),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 180,
                          child: Container(
                            height: 20,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text(
                                "NEW!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 210,
                          bottom: 0,
                          child: Container(
                            color: Colors.white70,
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Chewy tea".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text("Taro Bubble \nMilk Tea"),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 16,
                            right: 16,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 420,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text("Bubble Tea".toUpperCase()),
                  ),
                  Container(
                    height: 260,
                    child: ListView.separated(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                clicked = !clicked;
                              });
                            },
                            child: Container(
                              height: 80,
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://i.pinimg.com/originals/fa/fd/0f/fafd0f9c7daef75d21be2a8aa6ea4afe.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "Honey Milk Tea",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$4.90",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Colors.black,
                          );
                        },
                        itemCount: 10),
                  )
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            top: clicked ? 100 : MediaQuery.of(context).size.height,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(64),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 3,
                    )
                  ]),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(64),
                        )),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 16,
                          right: 16,
                          child: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                setState(() {
                                  clicked = !clicked;
                                });
                              }),
                        ),
                        Positioned(
                          top: 24,
                          left: 36,
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent.withOpacity(0.5),
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          bottom: -32,
                          left: 38,
                          child: Container(
                            height: 180,
                            width: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Bubble_Tea.png/200px-Bubble_Tea.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Positioned(
                          top: 35,
                          right: 32,
                          child: Container(
                            height: 200,
                            width: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Text("New!"),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "CHEWY TEA",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Taro Bubble Milk Tea",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 24),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "\$5 90",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only( top: 16),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent.withOpacity(0.1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text("Sugar level".toUpperCase()),
                        ),
                        Slider(
                          activeColor: Colors.green,
                          divisions: 4,
                          max: 10,
                          min: 0,
                          onChanged: (double value) {
                            setState(() {
                              sValue = value;
                            });
                          },
                          value: sValue,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 0,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.withOpacity(0.1)),
                  ),
                  Container(
                    height: 136,
                    decoration: BoxDecoration(
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            duration: Duration(milliseconds: 500),
          )
        ],
      ),
    );
  }
}
