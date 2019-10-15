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
                          text: TextSpan(
                            children: [
                              TextSpan(text: "New York, ",style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              )),
                              TextSpan(text: "US", style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                              )),
                            ]
                          ),
                        ),
                        SizedBox(height: 4,),
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
