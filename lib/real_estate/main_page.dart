import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RealEstateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HouseListPage(),
    );
  }
}

class HouseListPage extends StatefulWidget {
  @override
  _HouseListPageState createState() => _HouseListPageState();
}

class _HouseListPageState extends State<HouseListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 48,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width / 2,
//                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "New York, ",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            TextSpan(
                                text: "US",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                          ]),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(
                          height: 4,
                          thickness: 3,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(CupertinoIcons.search),
                    onPressed: () {
                      showSearch(
                          context: context, delegate: HomeSearchDelegate());
                    },
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 42,
                    width: MediaQuery.of(context).size.width / 2 - 72,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "2-4 Beds",
                          style: TextStyle(
                              color: Colors.teal, fontWeight: FontWeight.w800),
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.arrow_drop_up,
                              size: 20,
                              color: Colors.teal,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: Colors.teal,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Container(
                height: MediaQuery.of(context).size.height / 1.35,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 280,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.teal, width: 2)
                              ),
                              padding: EdgeInsets.all(4),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage()

                                  )
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: ,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Placeholder(),
                          ),
                          Expanded(
                            flex: 1,
                            child: Placeholder(),
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
    );
  }
}

class HomeSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(CupertinoIcons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: Icon(CupertinoIcons.left_chevron),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return ListView(
      children: new List<Widget>.generate(20, (i) {
        return ListTile(
          title: Text("Result ${i}"),
        );
      }).toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Column(
      children: <Widget>[
        ListTile(
          title: Text("Suggest1"),
        ),
        Divider(),
        ListTile(
          title: Text("Suggest2"),
        ),
        Divider(),
        ListTile(
          title: Text("Suggest3"),
        )
      ],
    );
  }
}
