import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/meeting_roombooking_app/booking.dart';

class MeetingRoomBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookingPage(),
    );
  }
}

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbede7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            left: true,
            top: true,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.indigo,
                ),
                onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Buildings",
              style: TextStyle(
//              color: Color(0xff3c4b5b),
                color: Colors.indigo,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 610,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(16),
                  height: 340,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                items[index].title,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                items[index].subTitle,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                          )
                        ],
                      ),
                      Divider(
                        height: 32,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            size: 16,
                            color: Colors.indigo,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Working hours",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.indigo,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: items[index].hours.length,
                          itemBuilder: (context, idx) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(items[index].hours[idx].date),
                                  Text(items[index].hours[idx].time),
                                ],
                              ),
                            );
                          }),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.network_cell),
                          SizedBox(
                            width: 4,
                          ),
                          Text("floor"),
                          Text(items[index].floor.toString()),
                          Spacer(),
                          Icon(Icons.room_service),
                          SizedBox(
                            width: 4,
                          ),
                          Text("meeting rooms"),
                          Text(items[index].rooms.toString()),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: items[index].img.length,
                            itemBuilder: (context, i) {
                              return Container(
                                width: 160,
                                margin: EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                        image:
                                            NetworkImage(items[index].img[i]),
                                        fit: BoxFit.cover)),
                              );
                            }),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
