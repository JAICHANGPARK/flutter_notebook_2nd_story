import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                  Text(
                    "Dreamwalker",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 38,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[Text("11947"), Text("FOLLOWERS")],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[Text("26M"), Text("TOTAL VIEWS")],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[Text("2.3"), Text("TOTAL LIKES")],
                )
              ],
            ),
          ),
          Container(
            height: 24,
            child: Text("Flutter Developer"),
          ),
          Container(
            height: 48,
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 16, right: 8),
                    color: Colors.greenAccent,
                    child: Center(
                      child: Text(
                        "FOLLOW",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 8, right: 16),
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "MESSAGE HIM",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.center,
            child: Text("TOKYO, JAPAN"),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            height: 32,
            child: TabBar(
              indicatorColor: Colors.greenAccent,
              indicatorWeight: 4,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  text: "103 PHOTOS",
                ),
                Tab(
                  text: "COLLECTIONS",
                ),
                Tab(
                  text: "STATS",
                ),
                Tab(
                  text: "FEATURED IN",
                )
              ],
              controller: _tabController,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, top: 8),
              child: Text("SORT BY"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16,),
            height: MediaQuery.of(context).size.height / 2.15,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                GridView.count(
                  padding: EdgeInsets.zero,
                  childAspectRatio: 0.9,
                  crossAxisCount: 2,

                  children: List.generate(100, (index){
                    return Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red,
                    );
                  })
                ),
                GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 2,
                    children: List.generate(100, (index){
                      return Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.purpleAccent,
                      );
                    })
                ),
                GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 2,
                    children: List.generate(100, (index){
                      return Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.greenAccent,
                      );
                    })
                ),
                GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 2,
                    children: List.generate(100, (index){
                      return Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.blue,
                      );
                    })
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}









